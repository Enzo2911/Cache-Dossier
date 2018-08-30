@ECHO OFF
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Private goto MDLOCKER
:CONFIRM
color C
echo 
echo ----------------------------------------------------
echo ---------------- Cache Ton Dossier -----------------
echo -----------        Cree Par Enzo         -----------
echo ---------------- Version Beta 2018 -----------------
echo ----------------------------------------------------
echo 
echo voulez vous verrouiller le dossier private (Y/N)
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==O goto LOCK
if %cho%==o goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Mauvais Choix tapez Y pour oui et N pour non.
goto CONFIRM
:LOCK
ren Private "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo -------------------------------------------------------------------------
echo le Dossier a été verouiller. !!
echo -------------------------------------------------------------------------
echo Le fichier de deverrouillage a ete renomme en Bureau.
echo -------------------------------------------------------------------------
echo Si tu veux deverouiller ton dossier re enregistre le fichier en .BAT
echo -------------------------------------------------------------------------
ping localhost -n 6 >nul 
ren test.bat "Bureau"  && exit

:UNLOCK
echo Entrez le mot de passe pour acceder au dossier verrouille
set/p "pass=>"
if NOT %pass%== ********** goto FAIL

attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Private
echo -------------------------------------
echo Dossier Deverrouille Avec Succes. !
echo -------------------------------------
goto End
:FAIL
color c

cls

echo ---------------------------------
echo Mots de passe incorrect attention 
echo ---------------------------------
echo Mots de passe incorrect attention 
echo ---------------------------------
echo Mots de passe incorrect attention 
echo --------------------------------- 
echo Mots de passe incorrect attention 
echo ---------------------------------
echo Mots de passe incorrect attention 
echo ---------------------------------
echo Mots de passe incorrect attention 
echo --------------------------------- 
echo Mots de passe incorrect attention 
echo ---------------------------------
echo Mots de passe incorrect attention 
echo ---------------------------------
echo Mots de passe incorrect attention 
echo --------------------------------- 
echo Mots de passe incorrect attention 
echo ---------------------------------
echo Mots de passe incorrect attention 
echo ---------------------------------
echo Mots de passe incorrect attention 
echo --------------------------------- 
ping localhost -n 5 >nul 
cls
:UNLOCK1
cls

echo -------------------------------------
echo Le Mot de Pass Saisie est incorrect
echo -------------------------------------
echo Attention .!
echo -------------------------------------
set/p "pass=>"
if NOT %pass%== ********** goto UNLOCK2
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Private
echo ---------------------
echo dossier deverrouille
echo ---------------------
goto end
:UNLOCK2
cls

echo ----------------------------------------
echo Tu a saisie un mauvais mots de passe
echo ----------------------------------------
echo une question te sera pose.
echo ----------------------------------------
echo Quel pays est tu nee ?.
echo ----------------------------------------
set/p "pass=>"
if NOT %pass%== france goto UNLOCK3
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Private
echo ---------------------
echo dossier deverrouille
echo ---------------------
goto end
:UNLOCK3
cls

echo -----------------------------------------------------
echo Tu a saisie un mauvais mots de passe
echo -----------------------------------------------------
echo Et tu na pas bien repondu a la question.
echo -----------------------------------------------------
echo Veut tu reessayer le mots de passe ou la question ?.
echo -----------------------------------------------------
echo Mots de Passe = 1 /// Question = 2
set/p "cho=>"
if %cho%==1 goto UNLOCK1 
if %cho%==2 goto UNLOCK2 
echo --------------------------------------------------------------
echo Mauvais Choix tapez 1 pour Mots de Passe et 2 pour Question.
echo --------------------------------------------------------------
ping Localhost -n 5 >nul
goto UNLOCK3
:MDLOCKER
md Private
echo --------------------------------- 
echo Le Dossier Private A ete Cree. !!
echo --------------------------------- 
ping Localhost -n 5 >nul
start test.bat
goto End
:End 

exit