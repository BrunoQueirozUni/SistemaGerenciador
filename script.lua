if os.getenv("OS") == "Windows_NT" then
   os.execute("chcp 65001 > nul")
end

alunos = {}
professores = {}

function AdicionarAluno(nome, idade)
   table.insert(alunos, {nome = nome, idade = idade})
   print("Aluno " .. nome .. " adicionado com sucesso!")
end

function AdicionarProfessor(nome, idade)
   table.insert(professores, {nome = nome, materia = materia})
   print("Professor " .. nome .. " adicionado com sucesso!")
end

function ListarAlunos()
   if #alunos == 0 then
      print("Nenhum aluno cadastrado!")
   else
      print("╔══════════════════════════════════════════════════╗")
      print("║                 LISTA DE ALUNOS                  ║")
      print("╚══════════════════════════════════════════════════╝")
      for i, aluno in ipairs(alunos) do
         print(i .. " - " .. aluno.nome .. " - " .. aluno.idade .. " anos ") -- Adicionar Turma mais tarde
      end
      print("\n\n")
   end
end

function ListarProfessores()
   if #professores == o then
      print("Nenhum professor cadastrado!")
   else
      print("╔══════════════════════════════════════════════════╗")
      print("║               LISTA DE PROFESSORES               ║")
      print("╚══════════════════════════════════════════════════╝")
      for i, professores in ipairs(professores) do
         print(i .. " - " .. professores.nome .. " - " .. professores.materia)
      end
      print("\n\n")
   end
end

function Gerenciar()
   while true do
      print("╔════════════════════════════╗")
      print("║           OPÇÕES           ║")
      print("╠════════════════════════════╣")
      print("║ 1 - Adicionar aluno        ║")
      print("║ 2 - Adicionar professores  ║")
      print("║ 3 - Listar alunos          ║")
      print("║ 4 - Listar professores     ║")
      print("║ 5 - Sair                   ║")
      print("╚════════════════════════════╝")
      io.write("Opção: ")
      local opcao = io.read("*n")
      io.read()

      if opcao == 1 then

         io.write("Digite o nome do aluno: ")
         local nome = io.read()
         io.write("Digite a idade do aluno: ")
         local idade = io.read("*n")

         AdicionarAluno(nome, idade)

      elseif opcao == 2 then

         io.write("Digite o nome do professor: ")
         local nome = io.read()
         io.write("Digite a matéria do professor: ")
         local materia = io.read()

         AdicionarProfessor(nome, materia)

      elseif opcao == 3 then
         ListarAlunos()
      elseif opcao == 4 then
         ListarProfessores()
      elseif opcao == 5 then

         print("\n")
         io.write("Saindo do sistema")
            for i = 1, 4 do
               io.write(".")
               io.flush()
               os.execute("timeout /t 1 >nul")
            end

         break
      else
         print("Opção inválida!")
      end
   end
end

Gerenciar()
