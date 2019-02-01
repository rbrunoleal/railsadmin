# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_01_29_124826) do

  create_table "bancos", force: :cascade do |t|
    t.string "codigo"
    t.string "descricao"
  end

  create_table "cargos", force: :cascade do |t|
    t.string "descricao"
  end

  create_table "cidades", force: :cascade do |t|
    t.string "nome"
    t.integer "estado_id"
    t.index ["estado_id"], name: "index_cidades_on_estado_id"
  end

  create_table "cnaes", force: :cascade do |t|
    t.string "codigo"
    t.string "descricao"
  end

  create_table "contaempresas", force: :cascade do |t|
    t.integer "banco_id"
    t.string "agencia"
    t.integer "agenciadigito"
    t.string "conta"
    t.integer "contadigito"
    t.integer "tipo"
    t.boolean "realizacao"
    t.decimal "saldo"
    t.boolean "ativo"
    t.index ["banco_id"], name: "index_contaempresas_on_banco_id"
  end

  create_table "contafavorecidos", force: :cascade do |t|
    t.integer "banco_id"
    t.string "agencia"
    t.integer "agenciadigito"
    t.string "conta"
    t.integer "contadigito"
    t.integer "tipo"
    t.integer "favorecido_id"
    t.index ["banco_id"], name: "index_contafavorecidos_on_banco_id"
    t.index ["favorecido_id"], name: "index_contafavorecidos_on_favorecido_id"
  end

  create_table "contatoempresas", force: :cascade do |t|
    t.integer "tipo"
    t.string "campo"
    t.integer "empresa_id"
    t.index ["empresa_id"], name: "index_contatoempresas_on_empresa_id"
  end

  create_table "contatofuncionarios", force: :cascade do |t|
    t.integer "tipo"
    t.string "campo"
    t.integer "funcionario_id"
    t.index ["funcionario_id"], name: "index_contatofuncionarios_on_funcionario_id"
  end

  create_table "contatos", force: :cascade do |t|
    t.integer "tipo"
    t.string "campo"
    t.integer "pessoa_id"
    t.index ["pessoa_id"], name: "index_contatos_on_pessoa_id"
  end

  create_table "empresas", force: :cascade do |t|
    t.integer "pessoajuridica_id"
    t.integer "endereco_id"
    t.boolean "padrao"
    t.index ["endereco_id"], name: "index_empresas_on_endereco_id"
    t.index ["pessoajuridica_id"], name: "index_empresas_on_pessoajuridica_id"
  end

  create_table "enderecos", force: :cascade do |t|
    t.integer "unidade_id"
    t.integer "estado_id"
    t.integer "cidade_id"
    t.string "cep"
    t.string "bairro"
    t.integer "logadouro"
    t.string "descricao"
    t.integer "numero"
    t.string "complemento"
    t.index ["cidade_id"], name: "index_enderecos_on_cidade_id"
    t.index ["estado_id"], name: "index_enderecos_on_estado_id"
    t.index ["unidade_id"], name: "index_enderecos_on_unidade_id"
  end

  create_table "estados", force: :cascade do |t|
    t.string "nome"
    t.string "sigla"
    t.integer "unidade_id"
    t.index ["unidade_id"], name: "index_estados_on_unidade_id"
  end

  create_table "favorecidos", force: :cascade do |t|
    t.integer "pessoa_id"
    t.boolean "ativo"
    t.index ["pessoa_id"], name: "index_favorecidos_on_pessoa_id"
  end

  create_table "funcionarios", force: :cascade do |t|
    t.integer "cargo_id"
    t.integer "pessoafisica_id"
    t.integer "endereco_id"
    t.boolean "ativo"
    t.index ["cargo_id"], name: "index_funcionarios_on_cargo_id"
    t.index ["endereco_id"], name: "index_funcionarios_on_endereco_id"
    t.index ["pessoafisica_id"], name: "index_funcionarios_on_pessoafisica_id"
  end

  create_table "pessoafisicas", force: :cascade do |t|
    t.string "nome"
    t.integer "sexo"
    t.string "cpf"
    t.string "rg"
    t.date "datanascimento"
  end

  create_table "pessoajuridicas", force: :cascade do |t|
    t.string "cnpj"
    t.string "razaosocial"
    t.string "nomefantasia"
    t.integer "cnae_id"
    t.index ["cnae_id"], name: "index_pessoajuridicas_on_cnae_id"
  end

  create_table "pessoas", force: :cascade do |t|
    t.integer "tipo"
    t.integer "pessoafisica_id"
    t.integer "pessoajuridica_id"
    t.integer "endereco_id"
    t.index ["endereco_id"], name: "index_pessoas_on_endereco_id"
    t.index ["pessoafisica_id"], name: "index_pessoas_on_pessoafisica_id"
    t.index ["pessoajuridica_id"], name: "index_pessoas_on_pessoajuridica_id"
  end

  create_table "unidades", force: :cascade do |t|
    t.string "nome"
  end

  create_table "users", force: :cascade do |t|
    t.integer "tipo"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
