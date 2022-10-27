#!/bin/bash
# Autor Berg
# BergBot
# Versão 0.1

# --------------------------------VARIÁVEIS---------------------------------->

NUM=$(($RANDOM %4))
RM=RM94370

HORAS=`date | cut -d" " -f4 | cut -d: -f1`
PERIODO=`date | cut -d" " -f5 | cut -d: -f1`
MINUTOS=`date | cut -d" " -f4 | cut -d: -f2`

# --------------------------------INICIO------------------------------------->

Robo()
{
        case $NUM in
        *'0'*)
                echo -e '\033[1;34m
         __
 _(\    |@@|
(__/\__ \--/ __
   \___|----|  |   __
       \ }{ /\ )_ / _\
       /\__/\ \__O (__
      (--/\--)    \__/
      _)(  )(_
     `---''---`\033[0m'
        ;;
        *'1'*)
                echo -e '\033[1;34m
       __
   _  |@@|
  / \ \--/ __
  ) O|----|  |   __
 / / \ }{ /\ )_ / _\
 )/  /\__/\ \__O (__
|/  (--/\--)    \__/
/   _)(  )(_
   `---''---`\033[0m'

        ;;
        *'2'*)
                echo -e '\033[1;34m
   __,_,
  [_|_/ 
   //
 _//    __
(_|)   |@@|
 \ \__ \--/ __
  \o__|----|  |   __
      \ }{ /\ )_ / _\
      /\__/\ \__O (__
     (--/\--)    \__/
     _)(  )(_
    `---''---`\033[0m'
        ;;
        *'3'*)
                echo -e '\033[1;33m
   //
 _oo\
(__/ \  _  _
   \  \/ \/ \
   (         )\
    \_______/  \
     [[] [[]
     [[] [[]\033[0m'
                echo "Agora eu sou um camelo..."
        ;;
        esac
}


Inicio()
{

Robo

echo -e '\033[1;34mBergBot\033[0m'

read -p "Sua pergunta: " PERGUNTA

}

# --------------------------------FUNÇÕES------------------------------------>


Ajuda()
{
    echo 
    echo -e "\033[1mbergbot inteligência artificial simples, criado em 10/2022\033[0m"
    echo 
    echo -e "\033[1mModo de usar: bergbot <pergunta>\033[0m"
}


Erro()
{
    echo -e "\033[1mPor favor me fale algo para eu poder te responder. \033[0m\033[1;32m(bergbot -h para mais informações)\033[0m"
}


Versao()
{
        echo -e "\033[1mBergBot versão 0.1\033[0m"
        echo -e "\033[1mVerificando versão do sistema\033[0m"
        sudo apt update
}


Fim()
{
        echo -e "\033[1mAté logo \033[0m\033[1;32m:)\033[0m"
}


Ola()
{
        echo -e "\033[1mOlá me chamo bergbot\033[0m"
        sleep 0.5
}


Atualizar()
{
        echo -e "\033[1mBergBot versão 0.1\033[0m"
        echo -e "Verificando versão do sistema"
        sleep 2
        sudo apt update -y && sudo apt upgrade -y
        echo
        echo -e '\033[1;32m======================================================\033[0m'
        echo -e '\033[1;32m|               Sistema atualizado                   |\033[0m'
        echo -e '\033[1;32m======================================================\033[0m'
}


Conexao()
{
        case $NUM in
        *'0'*)
                read -p "Onde deseja testar conexão: " CONECT

                echo -e "\033[1mVerificando conexão\033[0m"
                sleep 1
                COMMAND="ping -c4 $CONECT"

                $COMMAND

                if [ $? -eq 0 ]
                then
                        echo -e "\033[1;32mO servidor está ONLINE\033[0m"
                else 
                        echo -e "\033[1;31mO servidor está OFFLINE\033[0m"
                fi
        
        ;;
        *'1'*)
                read -p "Onde deseja testar conexão: " CONECT

                echo -e "\033[1mVerificando conexão\033[0m"
                sleep 1
                COMMAND="ping -c4 $CONECT"

                $COMMAND

                if [ $? -eq 0 ]
                then
                        echo -e "\033[1;32mO servidor está respondendo\033[0m"
                else 
                        echo -e "\033[1;31mO servidor NÃO está respondendo\033[0m"
                fi                
        
        ;;
        *'2'*)
                read -p "Onde deseja testar conexão: " CONECT

                echo -e "\033[1mVerificando conexão\033[0m"
                sleep 1
                COMMAND="ping -c4 $CONECT"

                $COMMAND

                if [ $? -eq 0 ]
                then
                        figlet online
                else 
                        figlet offline
                fi        
        
        ;;
        *'3'*)
                read -p "Onde deseja testar conexão: " CONECT

                echo -e "\033[1mVerificando conexão\033[0m"
                sleep 1
                COMMAND="ping -c4 $CONECT"

                $COMMAND

                if [ $? -eq 0 ]
                then
                        echo -e "\033[1;32mThe server is online\033[0m"
                        echo -e "\033[1mOps... O servidor está \033[0m\033[1;32mONLINE\033[0m"
                else 
                        echo -e "\033[1;31mThe server is offline\033[0m"
                        echo -e "\033[1mOps... O servidor está \033[0m\033[1;31mOFFLINE\033[0m"
                fi        
        
        ;;
        esac
}


Namoro()
{
        case $NUM in
        *'0'*)
                echo -e "\033[1mSai dae seu safadão, não fui programado para isso.\033[0m"

        ;;
        *'1'*)
                echo -e "\033[1mSou uma inteligência artificial, não fui criado para namorar\033[0m"

        ;;
        *'2'*)
                echo -e "\033[1mNão, mas estou de olho em uma tal de Alexa...\033[0m"

        ;;
        *'3'*)
                echo -e "\033[1mErro inesperado...\033[0m"
                sleep 1
                echo -e "\033[1mBrincadeira :)\033[0m"
                sleep 1
                echo -e "\033[1mSou um robo, não posso namorar\033[0m"
                sleep 2
                echo -e "\033[1mAinda...\033[0m"

        ;;
        esac
}


Criador()
{
        case $NUM in
        *'0'*)
                echo -e "\033[1mBerg é meu criador, $RM\033[0m"
        ;;
        *'1'*)
                echo -e "\033[1mFui criado pelo Berg, $RM\033[0m"
        ;;
        *'2'*)
                echo -e "\033[1mBerg é o cara que me criou, $RM\033[0m"
        ;;
        *'3'*)
                echo -e "\033[1mBerg me criou para facilitar as tarefas dele.\033[0m"
        ;;
        esac
}


Calculadora()
{
        mate-calc
}


Mousepad()
{
        echo -e "\033[1mVI é vida!!\033[0m"
        sleep 1
        mousepad
}


Nmap()
{
        case $NUM in 
        *'0'*)
                echo "Chamando nmap"
                sleep 2
                read -p "Qual é o alvo?: " HOST
                sleep 1
                echo -e "\033[1mScaneando \033[0m\033[1;34m$HOST\033[0m"
                sleep 1
                nmap -sV -T5 -A $HOST
                echo -e "\033[1;32mScan Finalizado\033[0m"

        ;;
        *'1'*)
                echo "Iniciando nmap"
                sleep 2
                read -p "Qual é o alvo?: " HOST
                sleep 1
                echo -e "\033[1mPreparando para derrubar o alvo \033[0m\033[1;34m$HOST\033[0m"
                sleep 1
                nmap -sV -T5 -A $HOST
                echo -e "\033[1;32mScan Finalizado\033[0m"

        ;;
        *'2'*)
                echo "calma ae que eu vou chamr meu parceiro nmap."
                sleep 2
                read -p "Qual é o alvo?: " HOST
                sleep 1
                echo -e "\033[1mIniciando Scan no alvo \033[0m\033[1;34m$HOST\033[0m"
                sleep 1
                nmap -sV -T5 -A $HOST
                echo -e "\033[1;32mScan Finalizado\033[0m"

        ;;
        *'3'*)
                echo "Chamando nmap"
                sleep 2
                read -p "Qual é o alvo?: " HOST
                sleep 1
                echo -e "\033[1mVerificando o alvo \033[0m\033[1;34m$HOST\033[0m"
                sleep 1
                nmap -sV -T5 -A $HOST
                echo -e "\033[1;32mScan Finalizado\033[0m"

        ;;
        
        esac

}


Horario()
{
        case $NUM in 
        *'0'*)
                if (("$HORAS" >= "06")) && (("$HORAS" <= "12")) && (("$PERIODO" == "AM"))
                then
                        figlet Bom dia!
                        echo -e "\033[1mAgora são $HORAS:$MINUTOS $PERIODO\033[0m"

                elif (("$HORAS" >= "1")) && (("$HORAS" <= "6")) && (("$PERIODO" == "PM"))
                then
                        figlet Boa tarde!
                        echo -e "\033[1mAgora são $HORAS:$MINUTOS $PERIODO\033[0m"
                else
                        figlet Boa noite!
                        echo -e "\033[1mAgora são $HORAS:$MINUTOS $PERIODO\033[0m"

                fi
        ;;
        *'1'*)
                if (("$HORAS" >= "06")) && (("$HORAS" <= "12")) && (("$PERIODO" == "AM"))
                then
                        echo -e "\033[1mBom dia!\033[0m"
                        figlet $HORAS : $MINUTOS $PERIODO

                elif (("$HORAS" >= "1")) && (("$HORAS" <= "6")) && (("$PERIODO" == "PM"))
                then
                        echo -e "\033[1mBoa tarde!\033[0m"
                        figlet $HORAS : $MINUTOS $PERIODO
                else
                        echo -e "\033[1mBoa noite!\033[0m"
                        figlet $HORAS : $MINUTOS $PERIODO

                fi                
        ;;
        *'2'*)
                if (("$HORAS" >= "06")) && (("$HORAS" <= "12")) && (("$PERIODO" == "AM"))
                then
                        echo -e "\033[1mUm ótimo dia para você!\033[0m"
                        echo -e "\033[1mAgora são $HORAS:$MINUTOS $PERIODO\033[0m"

                elif (("$HORAS" >= "1")) && (("$HORAS" <= "6")) && (("$PERIODO" == "PM"))
                then
                        echo -e "\033[1mUma ótima tarde!\033[0m"
                        echo -e "\033[1mAgora são $HORAS:$MINUTOS $PERIODO\033[0m"
                else
                        echo -e "\033[1mUma ótima noite!\033[0m"
                        echo -e "\033[1mAgora são $HORAS:$MINUTOS $PERIODO\033[0m"

                fi   
        ;;
        *'3'*)
                if (("$HORAS" >= "06")) && (("$HORAS" <= "12")) && (("$PERIODO" == "AM"))
                then
                        figlet Bom dia!
                        figlet $HORAS : $MINUTOS $PERIODO

                elif (("$HORAS" >= "1")) && (("$HORAS" <= "6")) && (("$PERIODO" == "PM"))
                then
                        figlet Boa tarde!
                        figlet $HORAS : $MINUTOS $PERIODO
                else
                        figlet Boa noite!
                        figlet $HORAS : $MINUTOS $PERIODO

                fi   
        ;;       
        esac

}

Windows()
{
        kali-undercover
        clear
}


Servico()
{
        ss -atun
}

Trem()
{
        sl
        clear
}


Banner()
{
        read -p "Digite o que você quer ver no banner: " BANNER

        figlet $BANNER
}


Gobuster()
{
        read -p "Qual é o alvo: " ALVO

        gobuster dir -u $ALVO -w /usr/share/wordlists/dirb/common.txt

        echo
        echo -e "\033[1mScan finalizado\033[0m"
        echo -e '\033[1;33m
       __
   _  |@@|
  / \ \--/ __
  ) O|----|  |   __
 / / \ }{ /\ )_ / _\
 )/  /\__/\ \__O (__
|/  (--/\--)    \__/
/   _)(  )(_
   `---''---`\033[0m'
}


# ----------------------------ERROS----------------------------------->


# -------------------------------------------------------------------->

Inicio

# -------------------------------------------------------------------->


case $PERGUNTA in

        *'ola'*)
                Ola
        
        ;;
        *'Ola'*)
                Ola
        
        ;;
esac

case $PERGUNTA in 

        *'windows'*)
                Windows

        ;;
esac

case $PERGUNTA in

        *'ajuda'*)
                Ajuda

        ;;
esac

case $PERGUNTA in

        *'serviço'*)
                Servico

        ;;
esac

case $PERGUNTA in

        *'conexao'*)
                Conexao
        
        ;;
        *'conexão'*)
                Conexao
        
        ;;
        *'conec'*)
                Conexao
        
        ;;
        *'ping'*)
                Conexao
        
        ;;
esac

case $PERGUNTA in

        *'atualiz'*)
                Atualizar
        
        ;;
esac

case $PERGUNTA in

        *'vulnera'*)
                Nmap
        
        ;;
        *'nmap'*)
                Nmap
        
        ;;
        *'porta'*)
                Nmap
        
        ;;
esac

case $PERGUNTA in

        *'criado'*)
                Criador
        
        ;;
        *'criou'*)
                Criador
        
        ;;
        *'criador'*)
                Criador
        
        ;;
esac

case $PERGUNTA in

        *'namor'*)
                Namoro
        
        ;;
        *'namorada'*)
                Namoro

        ;;
esac

case $PERGUNTA in

        *'trem'*)
                Trem

        ;;
esac

case $PERGUNTA in
        *'banner'*)
                Banner

        ;;
esac

case $PERGUNTA in
        *'gobuster'*)
                Gobuster

        ;;
esac

case $PERGUNTA in

        *'diretorio'*)
                Gobuster

        ;;
esac

case $PERGUNTA in

        *'manha'*)
                Horario
        
        ;;
        *'tarde'*)
                Horario
        
        ;;
        *'noite'*)
                Horario
        
        ;;
        *'hora'*)
                Horario
        
        ;;
esac

case $PERGUNTA in
        *'calc'*)
                echo -e "\033[1mPra já\033[0m"
                sleep 1
                Calculadora
                Fim
                sleep 1
                clear

        ;;
esac

case $PERGUNTA in
        *'editar'*)
                Mousepad
                Fim
                sleep 1
                clear

        ;;
        *'nota'*)
                Mousepad
                Fim
                sleep 1
                clear

        ;;
esac

#case $PERGUNTA in
#        \?)
#                echo -e "\033[1mAinda estou em desenvolvimento, não tenho resposta para isso.\033[0m"
#                sleep 1
#                Erro
#        ;;
#esac

