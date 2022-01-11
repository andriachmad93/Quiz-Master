# Quiz-Master

Here are instructions to Run Quiz Master :

1. run `bin/setup` to setup quiz master directory such as run bundle install and show unit test passes or not.
2. run `bin/quiz_master`. It will show Welcome to Quiz Master then Please input your command.
3. There are commands at Quiz Master :
- `create_question` | Creates a question will show :
    1. No, please input number. (No equals ID will be unique)
    2. Question, please input question.
    3. Answer, please input answer.
    4. After created, it will show Question 1 created or Question already existed.

- `update_question` | Updates a question will show :
    1. No, please input number.
    2. Question, please input question.
    3. Answer, please input answer.
    4. After updated, it will show Question was updated or No Question found.

- `delete_question` | Deletes a question will show :
    1. No, please input number.
    2. After deleted, it will show Question was deleted or No Question found.

- `question` | Shows a question
    1. No, please input number.
    2. It will show Question and Answer Detail or No Question found.

- `questions` | Shows question list will show questions

- `answer_question` | Answers a question will show :
    1. No, please input number.
    2. Answer, please input answer such as 5 or five.
    3. Answer equals correct or incorrect or No Question found.

- `help` to show commands.

- `exit` to exit from Quiz Master Program.
