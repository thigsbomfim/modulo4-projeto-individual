# modulo4-projeto-individual

<div align="center">
    <img src="https://user-images.githubusercontent.com/113481183/217385465-eabf8919-1d9e-4405-9ad0-8cff89b579c0.png" width="900px">
</div>

⇨ **Existem outras entidades além dessas três?**

    Existem 3 entidades além das 3 mencionadas, que são: 
    instituições, disciplinas e instrutores.
      
    Além dessas, existem mais três entidades associativas, que fazem referência a outra entidade, que são: 
    turmas_instrutores, turmas_alunos e instrutores_disciplinas.
          
⇨ **Quais são os principais campos e tipos?**

      os Campos e tipos:
      
        instituições: institution_id (PK/INT), institution_name (VARCHAR), institution_address(VARCHAR), institution_phone(VARCHAR),
        
        cursos: course_id (PK/INT), course_name (VARCHAR), course_description (TEXT), course_institution (FK/INT),
        
        turmas: class_id (PK/INT), class_start_date (DATE), class_end_date (DATE), class_room (VARCHAR), class_course (FK/INT),
        
        disciplinas: sub_id (PK/INT), sub_name (VARCHAR), sub_description (TEXT),  sub_course (FK/INT),
        
        alunos: stud_id (PK/INT), stud_name (VARCHAR), stud_email (VARCHAR), stud_phone (VARCHAR), stud_birth (DATE), stud_class (FK/INT),
        
        instrutores: tutor_id (PK/INT), tutor_name (VARCHAR), tutor_phone (VARCHAR), tutor_email (VARCHAR), tutor_subjects (FK/INT),
        
        turma_alunos: class_stud (PK/INT), class_id (FK/INT), stud_id (FK/INT),
        
        turma_instrutores: class_tutor (PK/INT), class_id (FK/INT), tutor_id (FK/INT),
        
        instrutores_disciplinas: tutor_sub (PK/INT), tutor_id (FK/INT), sub_id (FK/INT)

⇨ **Como essas entidades estão relacionadas?**

     Uma instituição possui muitos cursos (UM-PARA-MUITOS/1:N)
     Um curso possui muitas turmas (UM-PARA-MUITOS/1:N)
     Um curso possui muitas disciplinas (UM-PARA-MUITOS/1:N)
     Uma turma possui muitos alunos (UM-PARA-MUITOS/1:N)
     Um aluno pode estar em muitas turmas (UM-PARA-MUITOS/1:N)
     Um instrutor possui muitas disciplinas (UM-PARA-MUITOS/1:N)
     Cada disciplina contém muitos instrutores (UM-PARA-MUITOS/1:N)
     
     
