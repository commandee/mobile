# Commandee Mobile

Aplicativo desenvolvido em Fluttwer destinado a operação por garçons de estabelecimentos possuidores dos serviços do Commandee

## Instalação
### No Windows
  1. Copiar o link do repositório em uma pasta de sua escolha ou fazer download do projeto pelo Github;
  3. Instalar a versão mais recente do Flutter SDK para windows e rodar o comando `flutter doctor` para a exibição de status da instalação;
  4. Atualizar o Path para a execução de comandos no console;
  5. Instalar o Android Studio e configurar seus dispositivos e emuladores;
  6. Concordar com as licenças Android rodando o comando `flutter doctor --android-licenses`;
  7. Possuir Visual Studio 2022 ou Visual Studio Build Tools 2022, contendo Desktop development with C++
  8. Configurar seu editor de código de preferência

Para um passo a passo mais detalhado, acesse a documentação do flutter e o seu guia de instalação: [Flutter Windows Install](https://docs.flutter.dev/get-started/install/windows)
### No Linux
  1. Copiar o link do repositório em uma pasta de sua escolha ou fazer download do projeto pelo Github;
  2. Instalar a versão mais recente do Flutter SDK com um os dois métodos disponíveis: Utilizando o [snapd](https://snapcraft.io/docs/installing-snapd) e após a sua instalação rodar o comando `sudo snap install flutter --classic` ou instalando manualmente a versão mais recendo do Flutter SDK para linux;
  3. Atualizar o Path para a execução de comandos no console;
  4. Instalar o Android Studio e configurar seus dispositivos e emuladores;
  5. Concordar com as licenças Android rodando o comando `flutter doctor --android-licenses`;
  6. Baixar os pré-requisitos Linux para a utilzação do Flutter em Linux, rodando o comando `sudo apt-get install clang cmake git ninja-build pkg-config libgtk-3-dev liblzma-dev libstdc++-12-dev`. Os requisitos são:
     - Clang
     - CMake
     - git
     - GTK development headers
     - Ninja build
     - pkg-config
     - liblzma-dev
     - libstdc++-12-dev
   7. Configurar seu editor de código de preferência
      
Para um passo a passo mais detalhado, acesse a documentação do flutter e o seu guia de instalação: [Flutter Linux Install](https://docs.flutter.dev/get-started/install/linux)

## Rodar o projeto
  1. Ao abrir a pasta do projeto em seu editor de código, procure a pasta lib e dentro dela o arquivo main.dart
  2. Abra o terminal e digite o comando `flutter run`;
  3. Selecione o emulador e espere a build do projeto ser concluída;
