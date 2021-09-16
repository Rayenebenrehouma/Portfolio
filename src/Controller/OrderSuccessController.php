<?php

namespace App\Controller;

use App\Classe\Cart;
use App\Classe\Mail;
use App\Entity\Order;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class OrderSuccessController extends AbstractController
{
    private $entityManager;

    public function __construct(EntityManagerInterface $entityManager)
    {
        $this->entityManager = $entityManager;
    }
    #[Route('/commande/merci/{stripeSessionId}', name: 'order_success')]
    public function index(Cart $cart, $stripeSessionId): Response
    {
        $order = $this->entityManager->getRepository(Order::class)->findOneBy(array('StripeSessionId'=>$stripeSessionId));

        if(!$order || $order->getUtilisateur() !== $this->getUser()){
            return $this->redirectToRoute('home');
        }

        if($order->getState() == 0){
            //Vide la session cart
            $cart->remove();
            $order->setState(1);
            $this->entityManager->flush();

            $mail = new Mail();
            $content = "Bonjour ".$order->getUtilisateur()->getFirstname()."<br/>Merci pour votre commande .<br><br>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad amet aperiam asperiores, cum distinctio enim eos ex libero nam nesciunt non obcaecati omnis quae ratione rem repellat totam velit, voluptatum.";
            $mail->send($order->getUtilisateur()->getEmail(), $order->getUtilisateur()->getFirstname(), 'Votre commande sur la Boutique Française est bien validée .', $content);

    }

        return $this->render('order_success/index.html.twig',[
            'order' => $order
        ]);

    }
}
