class Cadastro < SitePrism::Page
        set_url 'https://onboardingjs.firebaseapp.com/'
        element :nome, "input[placeholder='Nome']"
        element :sobrenome, '#lastName'
        element :email, '#email'
        element :data_nascimento, "#birthdate"
        element :ddd, '#ddd'
        element :numero, '#number'
        element :empresa, "input[formcontrolname='company']"
        element :notas, "textarea[placeholder='Notas']"
        element :calendario, "button[aria-label='Open calendar']"
        element :salvar, 'button[class="btn-save mat-raised-button mat-primary"]'
        element :msg_sucesso_cadastro, "div[id='swal2-content']"
        element :adicionar_btn, "button[class='btn-user-new mat-raised-button mat-primary']"
        element :ok_btn, "button[class='swal2-confirm swal2-styled']"


    def adicionar
        wait_for_adicionar_btn(10)
        adicionar_btn.click
        
    end

    def set_nome(nome_novo_usuario)
        wait_for_nome(10)
        nome.set nome_novo_usuario
    end

    def set_sobrenome(sobrenome_novo_usuario)
        wait_for_sobrenome(10)
        sobrenome.set sobrenome_novo_usuario
    end

    def set_email(email_novo_usuario)
        email.set email_novo_usuario
    end

    def set_data_nascimento(data_nascimento_novo_usuario)
        data_nascimento.set data_nascimento_novo_usuario
    end

    def set_ddd(ddd_novo_usuario)
        ddd.set ddd_novo_usuario
    end

    def set_numero(numero_novo_usuario)
        numero.set numero_novo_usuario
    end

    def set_empresa(empresa_novo_usuario)
        empresa.set empresa_novo_usuario
    end

    def set_notas(notas_novo_usuario)
        notas.set notas_novo_usuario
    end

    def informardados_para_cadastro(nome, sobrenome, email='', data_nascimento='', ddd='', numero='', empresa='', notas='')
        set_nome(nome) 
        set_sobrenome(sobrenome)
        set_email(email) unless email.empty?
        set_data_nascimento(data_nascimento) unless data_nascimento.empty?
        set_ddd(ddd) unless ddd.empty?
        set_numero(numero) unless numero.empty?
        set_empresa(empresa) unless empresa.empty?
        set_notas(notas) unless notas.empty?
    end

    def salva_cadastro
        salvar.click
    end

    def confirmacao_cadastro
        msg_sucesso_cadastro
    end

    def ok
        wait_for_ok_btn
        ok_btn.click
    end
end