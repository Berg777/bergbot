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

echo -e '\033[1;34mBergBot\033[0m'

read -p "Sua pergunta: " PERGUNTA


# --------------------------------FUNÇÕES------------------------------------>


Random()
{
        if [$NUM -eq 0];then
        rand=0
        elif [$NUM -eq 1];then
        rand=1
        elif [$NUM -eq 2];then
        rand=2
        else
        rand=3
        fi
}


Ajuda()
{
    echo 
    echo "bergbot inteligência artificial simples, criado em 10/2022"
    echo 
    echo "Modo de usar: bergbot <pergunta>"
    echo
    echo $NUM
}


Erro()
{
    echo "Por favor me fale algo para eu poder te responder. (bergbot -h para mais informações)"
}


Versao()
{
        echo "BergBot versão 0.1"
        echo "Verificando versão do sistema"
        sudo apt update
}


Fim()
{
        echo -e "\033[1mAté logo\033[0m"
}


Atualizar()
{
        echo "BergBot versão 0.1"
        echo "Verificando versão do sistema"
        sleep 2
        sudo apt update -y && sudo apt upgrade -y
        echo
        echo -e '\033[1;32m======================================================\033[0m'
        echo -e '\033[1;32m|               Sistema atualizado                   |\033[0m'
        echo -e '\033[1;32m======================================================\033[0m'
}


Conexao()
{
        read -p "Onde deseja testar conexão: " CONECT

        echo -e "\033[1mVerificando conexão\033[0m"
        sleep 1
        ping -c4 $CONECT
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
        echo "Chamando nmap"
        sleep 2
        read -p "Qual é o alvo?: " HOST
        sleep 1
        echo "Scaneando $HOST"
        nmap $HOST
        echo -e '\033[1;32m
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
    `---''---` \033[0m'

}


Horario()
{
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

        gobuster dir -u $ALVO -w /usr/share/wordlists/dirbuster/directory-list-2.3-small.txt

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


# -------------------------------------------------------------------->


case $PERGUNTA in 
        *'windows'*)
                Windows

        ;;
        *'ajuda'*)
                Ajuda

        ;;
        *'serviço'*)
                Servico

        ;;
        *'conexao'*)
                Conexao
        
        ;;
        *'conexão'*)
                Conexao
        
        ;;
        *'conec'*)
                Conexao
        
        ;;
        *'atualiz'*)
                Atualizar
        
        ;;
        *'vulnera'*)
                Nmap
        
        ;;
        *'criado'*)
                echo "Berg é meu criador, $RM"
        
        ;;
        *'criou'*)
                echo "Fui criado pelo Berg, $RM"
        
        ;;
        *'criador'*)
                echo "Berg é o cara que me criou, $RM"
        
        ;;
        *'namora'*)
                echo "Não, mas estou de olho em uma tal de Alexa..."
        
        ;;
        *'namorada'*)
                echo "Sou uma inteligência artificial, não fui criado para namorar"

        ;;
        *'trem'*)
                Trem

        ;;
        *'banner'*)
                Banner

        ;;
        *'gobuster'*)
                Gobuster

        ;;
        *'diretorio'*)
                Gobuster

        ;;
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
        *'calc'*)
                echo -e "\033[1mPra já\033[0m"
                sleep 1
                Calculadora
                Fim
                sleep 1
                clear

        ;;
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
        *''*)
                echo "Ainda estou em desenvolvimento, não tenho resposta para isso."
        
        ;;
esac

