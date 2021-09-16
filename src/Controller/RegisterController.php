<?php

namespace App\Controller;

use App\Classe\Mail;
use App\Form\RegisterType;
use App\Entity\Utilisateur;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class RegisterController extends AbstractController
{
    private $entityManager;

    public function __construct(EntityManagerInterface $entityManager) {
        $this->entityManager = $entityManager;
    }

    #[Route('/inscription', name: 'register')]
    public function index(Request $request, UserPasswordEncoderInterface $encoder ): Response
    {
        $notification = null;
        $user = new Utilisateur();
        $form = $this->createForm(RegisterType::class, $user);

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $user = $form->getData();

            $search_email = $this->entityManager->getRepository(Utilisateur::class)->findOneByEmail($user->getEmail());

            if(!$search_email){
                $password = $encoder->encodePassword($user, $user->getPassword());

                $user->setPassword($password);

                $this->entityManager->persist($user);
                $this->entityManager->flush($user);

                $mail = new Mail();
                $content = "Bonjour ".$user->getFirstname()."<br/>Bienvenue sur la première boutique dédiée au Made in France<br><br>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad amet aperiam asperiores, cum distinctio enim eos ex libero nam nesciunt non obcaecati omnis quae ratione rem repellat totam velit, voluptatum.";
                $mail->send($user->getEmail(), $user->getFirstname(), 'Bienvenue sur la Boutique Française', $content);

                $notification = "Votre inscription c'est correctement déroulée. Vous pouvez des à présent vous connecter à votre compte.";
            }else{
                $notification = "L'email que vous avez renseigné existe déjà .";
            }

        }


        return $this->render('register/index.html.twig',[
            'form' => $form->createView(),
            'notification' => $notification
        ]);
    }
}
