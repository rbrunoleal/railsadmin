RailsAdmin.config do |config|
  
  config.main_app_name = ["SAN JUAN ADVOGADOS", ""]
  
  #VISIBLE FALSE
  config.model Contatoempresa do
    visible false 
  end
  config.model Contatofuncionario do
    visible false 
  end
  config.model Contafavorecido do
    visible false 
  end
  config.model Contato do
    visible false 
  end
  config.model Endereco do
    visible false 
  end
  config.model Pessoafisica do
    visible false 
  end
  config.model Pessoajuridica do
    visible false 
  end
  #ENDREGION VISIBLE FALSE
  
  #REGIÃO GLOBAL
  config.model Unidade do
   navigation_label 'Global'
   weight -11
  end
  config.model Estado do
   navigation_label 'Global'
   weight -10
  end
  config.model Cidade do
   navigation_label 'Global'
   weight -9
  end
  #ENDREGION REGIÃO GLOBAL
  
  #REGIÃO ADMINISTRATIVO
  config.model Cargo do
   weight -8
  end
  config.model Empresa do
   weight -7
  end
  config.model Funcionario do
   weight -6
  end
  config.model Pessoa do
   weight -5
  end
  #ENDREGION ADMINISTRATIVO
  
  #REGIAO FINANCEIRO
  config.model Banco do
   navigation_label 'Financeiro'
   weight -4
  end
  config.model Contaempresa do
   navigation_label 'Financeiro'
   weight -3
  end
  config.model Cnae do
   navigation_label 'Financeiro'
   weight -2
  end
  config.model Favorecido do
   navigation_label 'Financeiro'
   weight -1
  end
  #ENDREGION REGIAO FINANCEIRO
  
  
  #OCULTA ID
  config.model Cargo do 
    configure :id do
      hide
    end
  end
  config.model Cidade do 
    configure :id do
      hide
    end
  end
  config.model Empresa do 
    configure :id do
      hide
    end
  end
  config.model Estado do 
    configure :id do
      hide
    end
  end
  config.model Funcionario do 
    configure :id do
      hide
    end
  end
  config.model Pessoa do 
    configure :id do
      hide
    end
  end
  config.model Unidade do 
    configure :id do
      hide
    end
  end
  config.model Banco do 
    configure :id do
      hide
    end
  end
  config.model Contaempresa do 
    configure :id do
      hide
    end
  end
  config.model Favorecido do 
    configure :id do
      hide
    end
  end
   config.model Cnae do 
    configure :id do
      hide
    end
  end
  #ENDREGION OCULTA ID
  
  #AJUSTE LABEL
  config.model Funcionario do 
    configure :pessoafisica do
      label "Pessoa Física"
    end
  end
  config.model Funcionario do 
    configure :contatofuncionarios do
      label "Contatos"
    end
  end
  config.model Favorecido do 
    configure :contafavorecidos do
      label "Contas Bancárias"
    end
  end
  #ENDREGION LABEL
  
  #AJUSTE ORDEM
  config.model Pessoajuridica do
    field :nomefantasia
    field :razaosocial
    field :cnpj    
  end
  config.model Empresa do
    field :pessoajuridica
    field :endereco
    field :contatoempresas
    field :padrao
  end
  config.model Funcionario do
    field :pessoafisica
    field :endereco
    field :contatofuncionarios
    field :ativo
  end
  #ENDREGION ORDEM
  
  #AJUSTE ESPECIFICO
  config.model Pessoa do
    configure :tipo do
      html_attributes do
        {:id => 'tipopessoa_select'} 
      end
    end
  end
  config.model Pessoa do
    create do
      field :tipo
      field :pessoafisica
      field :pessoajuridica
      field :endereco
      field :contatos
      field "newpessoa_js", :hidden do
        def render
          bindings[:view].render partial: "newpessoa_js"
        end
      end
    end
    edit do
      field :tipo
      field :pessoafisica
      field :pessoajuridica
      field :endereco
      field :contatos
      field "editpessoa_js", :hidden do
        def render
          bindings[:view].render partial: "editpessoa_js"
        end
      end
    end
  end
  config.model Favorecido do
    create do
      field :pessoa
      field :ativo
      field :contafavorecidos
      field "newfavorecido_js", :hidden do
        def render
          bindings[:view].render partial: "newfavorecido_js"
        end
      end
    end
    edit do
      field :pessoa
      field :ativo
      field :contafavorecidos
      field "editfavorecido_js", :hidden do
        def render
          bindings[:view].render partial: "editfavorecido_js"
        end
      end
    end
  end
  #ENDREGION

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
