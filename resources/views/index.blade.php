@extends('layouts.master')

@section('title', 'Marcelo Maia')


@section('css')
    <link rel="stylesheet" href="{{ asset('css/index.css') }}">
    <link rel="stylesheet" href="{{ asset('css/print.css') }}" type="text/css" media="print" />
@endsection

@section('content')
    <div class="row a4">
        <div class="col-4 pessoal p-0">

            <div class="image">
                <img src="{{ asset('storage/image/foto-1.jpg') }}" class="img-fluid" alt="..">
            </div>

            <div class="nome">
                <h3 class="firstname">Marcelo</h3>
                <h5 class="secondname">Maia</h5>
                <p class="cargo">- Analista de Sistemas -</p>
            </div>

            <div class="caracteristicas">
                <p class="header">
                    <i class="far fa-user-circle"></i><span>características</span>
                </p>
                <div class="hr"></div>
                <ul class="check-list">
                    <li><i class="fas fa-check fa-xs"></i> muito criativo</li>
                    <li><i class="fas fa-check fa-xs"></i> rápida adaptação</li>
                    <li><i class="fas fa-check fa-xs"></i> produtivo</li>
                    <li><i class="fas fa-check fa-xs"></i> extremamente concertrado</li>
                    <li><i class="fas fa-check fa-xs"></i> polímata</li>
                </ul>
            </div>

            <div class="sobre">
                <p class="header">
                    <i class="fa-solid fa-circle-info"></i><span>sobre mim</span>
                </p>
                <div class="hr"></div>
                <div class="descricao">
                    <p>Adiquiri ao longo de muitos anos como desenvolvedor de software competência em diversas áreas.</p>
                    <p>Segui estudando e aumentando os meus conhecimentos, afim de, atender as necessidades das empresas em
                        que
                        me coloquei à disposição.</p>
                    <p>Criei uma grande paixão pelo universo Web, com o qual me identifique e me aprofundei</p>
                    <p>Não parei por aí...</p>
                </div>
            </div>

            <div class="contato">

                <p class="header">
                    <i class="fa-solid fa-address-book"></i><span>Contato</span>
                </p>
                <div class="hr"></div>
                <div class="descricao">
                    <p><i class="fa-brands fa-whatsapp"></i><span>(82) 98161-3742 / (82) 98131-1716</span></p>
                    <p><i class="fa-solid fa-envelope-open-text"></i><span>mmaia.inf@gmail.com</span></p>
                    <p><i class="fa-solid fa-city"></i><span>Maceió/AL</span></p>
                    <p class="linkedin"><i
                            class="fab fa-linkedin"></i><span>linkedin.com/in/marcelo-maia-de-oliveira-83022557/</span></p>
                    <p><i class="fab fa-facebook"></i><span>facebook.com/marcelo.maiadeoliveira</span></p>
                </div>

            </div>

            <div class="hobbies">
                <p class="header">
                    <i class="fa-solid fa-splotch"></i><span>hobbies</span>
                </p>
                <div class="hr"></div>
                <div class="descricao">

                    <div class="row">
                        <div class="col-4">
                            <i class="fa-solid fa-film fa-2xl"></i>
                        </div>
                        <div class="col-4">
                            <i class="fa-solid fa-plane-departure fa-2xl"></i>
                        </div>
                        <div class="col-4">
                            <i class="fa-solid fa-graduation-cap fa-2xl"></i>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-4">
                            <i class="fa-solid fa-music fa-2xl"></i>
                        </div>
                        <div class="col-4">
                            <i class="fa-solid fa-umbrella-beach fa-2xl"></i>
                        </div>
                        <div class="col-4">
                            <i class="fa-solid fa-utensils fa-2xl"></i>
                        </div>
                    </div>

                </div>
            </div>

        </div>
        <div class="col-8 diversos">

            <div class="objetivo">
                <p class="header">
                    <i class="fa-solid fa-bullseye"></i><span>objetivo</span>
                </p>
                <div class="hr"></div>
                <div class="descricao">
                    <p>
                        Atuar como Analista de Sistemas e/ou Analista de Negócios.
                    </p>
                </div>
            </div>

            <div class="competencias">
                <p class="header">
                    <i class="fa-solid fa-laptop-code"></i><span>competências</span>
                </p>
                <div class="hr"></div>
                <div class="descricao">
                    <ul class="check-list">
                        <li><i class="fas fa-check fa-xs"></i>Modelagem em análise orientada a objetos com UML</li>
                        <li><i class="fas fa-check fa-xs"></i>Asp.Net MVC, PHP Laravel, Ajax, T-SQL, Bootstrap, ArgularJS,
                            jQuery</li>
                        <li><i class="fas fa-check fa-xs"></i>Visual Studio, SQL Server, MySQL, Enterprise Architect, VS
                            Code
                        </li>
                        <li><i class="fas fa-check fa-xs"></i>Especialista em front-end, UX Design</li>
                        <li><i class="fas fa-check fa-xs"></i>Atuação em ambientes de desenvolvimento ágil</li>
                        <li><i class="fas fa-check fa-xs"></i>Desenvolvimento de documentação de sistemas</li>
                        <li><i class="fas fa-check fa-xs"></i>Elaboração e desenvolvimento de modelagem de dados de projeto
                            e
                            conceitual</li>
                    </ul>
                </div>
            </div>

            <div class="experencias">
                <p class="header">
                    <i class="fa-solid fa-briefcase"></i><span>experiências</span>
                </p>
                <div class="hr"></div>
                <div class="descricao">

                    <div class="row">
                        <div class="col-3 empresa">
                            <p>Empresa Optotal HOYA</p>
                            <p>de 06/2014 a 04/2018</p>
                        </div>
                        <div class="col-9 atividades">
                            <p>Cargo de Analista de Sistemas</p>
                            <p>Modernização da plataforma de e-commerce proprietária através de
                                levantamento, desenvolvimento, teste e implantação;
                                Desenvolvimento da identidade visual de todo sistema seguindo os preceitos
                                da W3c e UX Design;
                                Implantação de sistema de geração de boletos bancários junto a plataforma
                                Bradesco;
                                Modelagem de migração de dados, geração de scripts de teste e implantação;
                                Levantamento de Negócios, documentação e desenvolvimento.</p>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-3 empresa">
                            <p>Empresa Cast Informática S/A</p>
                            <p>de 07/2012 a 06/2014</p>
                        </div>
                        <div class="col-9 atividades">
                            <p>Cargo de Analista de Sistemas</p>
                            <p>Desenvolvimento de Novos Projetos. Desenvolvimento da identidade visual de todos os sistemas
                                em
                                que atuei
                                seguindo os preceitos da W3c e UX Design. Geração de scripts para migração de dados.
                                Relatórios
                                de
                                andamento de projeto para a consultoria</p>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-3 empresa">
                            <p>Empresa Portal Card Ltda</p>
                            <p>de 02/2010 a 07/2012</p>
                        </div>
                        <div class="col-9 atividades">
                            <p>Cargo de Analista de Sistemas</p>
                            <p>Desenvolvimento de diversas aplicações: Web, Desktop e App Console. Atualização e
                                Padronização de
                                camada de
                                apresentação para todos os produtos da empresa junto aos clientes, como principais clientes,
                                estão:
                                Banrisul e Itaú Cartões. Desenvolvimento de área de Suporte ao SAC.</p>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-3 empresa">
                            <p>Empresa Curso ADV Informática</p>
                            <p>de 09/2004 a 02/2010</p>
                        </div>
                        <div class="col-9 atividades">
                            <p>Supervisor de Ensino</p>
                            <p>Desenvolvimento e manutenção de web sites institucional. Apresentação e Demonstração de
                                treinamentos em reuniões e palestras.
                                Ministrar treinamentos de programação web, desktop e app console para turmas de empresa,
                                turmas
                                agendadas e aulas individuais.
                                Implementar soluções de infra-estrutura como: configurações de switchs e configurar
                                servidores
                                de dados Linux, orçamentar e
                                montar novos laboratórios de aula. Supervisionar setor de vendas, em média com dez
                                colaboradores. Supervisionar setor
                                administrativo, na resolução de pendências financeiras e de carga horária dos alunos e
                                turmas de
                                empresa. Criação de novos cursos.
                            </p>
                        </div>
                    </div>

                </div>
            </div>

            <div class="varios row">

                <div class="col-6 formacao">

                    <p class="header">
                        <i class="fa-solid fa-user-graduate"></i><span>formação</span>
                    </p>
                    <div class="hr"></div>
                    <div class="descricao">
                        <div class="row">

                            <p>Escola Superior Candido Mendes</p>
                            <p>Tecnologia em Análise e Desenvolvimento de Sistemas</p>
                            <p>Rio de Janeiro/RJ</p>

                        </div>
                    </div>

                </div>

                <div class="col-6 idioma">

                    <p class="header">
                        <i class="fas fa-language"></i><span>idioma</span>
                    </p>
                    <div class="hr"></div>
                    <div class="descricao">
                        <div class="row">
                            <p><i class="fas fa-check fa-xs"></i><span>inglês</span></p>
                            <p><i class="fas fa-check fa-xs"></i><span>espanhol</span></p>
                        </div>
                    </div>

                </div>

            </div>

            <div class="assinatura">
                <div class="row">
                    <div class="col-3"></div>
                    <div class="col-6">
                        <div class="imgass">
                            <img src="{{ asset('storage/image/assinatura.png') }}" class="img-fluid" alt="...">
                        </div>
                        <div class="cpfass">
                            <span>Ass: Marcelo Maia</span>
                        </div>
                    </div>
                    <div class="col-3"></div>

                </div>
            </div>

        </div>
    </div>
@endsection

@section('js')
@endsection
