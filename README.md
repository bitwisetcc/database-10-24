# database-10-24
Repositório para a apresentação de Banco de Dados na Fatec SCS

## Passo a passo

### Neo4j

Em em seu sistema Windows, instale primeiro o WSL em um terminal logado como administrador:

```powershell
wsl --install
```

Instale a CLI do Docker através do [link oficial](https://docs.docker.com/desktop/install/windows-install) ou por meio de um _package manager_, como o scoop:

```sh
scoop install docker
```

Clone e instancie a imagem oficial do Neo4j

```sh
docker run --publish=7474:7474 --publish=7687:7687 --volume=$HOME/neo4j/data:/data neo4j
```

Agora acesse [localost:7474] em seu navegador para utilizar o Neo4j Browser.

### MongoDB

Crie um login para o MongoDB cloud usando sua conta GitHub, Google, ou email na [página de cadastro](https://account.mongodb.com/account/register).

Na sua dashboard, crie um novo projeto. Cada projeto pode ter várias bases de dados relacionadas. Projetos podem ser compartilhados com times. É possível agrupar projetos em organizações, com acesso limitado de acordo com o cargo de cada membro. Em seu novo projeto, crie uma coleção e insira um documento inicial.

Para criar uma credencial para acessar o banco de dados através de código, vá até _"Database Access"_ na sidebar e adicione um novo usuário. Na página de _"Overview"_, no painel _Connect_ > _Drivers_ para obter um template para a URL de conexão da base de dados. Formate essa URL com o login e senha cadastrados para conectar com a base de dados através do driver em sua linguagem de programação de escolha.

Segue um código sample para estabelecer uma conexão em Python:

```py
from os import environ
from pymongo import MongoClient
from pymongo.server_api import ServerApi

client = MongoClient(environ.get("MONGODB_URI"), server_api=ServerApi("1"))
db = client["<NOME_DA_BD>"]
```
