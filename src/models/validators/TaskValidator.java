package models.validators;

import java.util.ArrayList;
import java.util.List;

import models.Task;

public class TaskValidator {
    public static List<String> validate(Task t) {
        List<String> errors = new ArrayList<String>();

        String taskContent_error = _validateTaskContent(t.getTaskContent());
        if(!taskContent_error.equals("")){
            errors.add(taskContent_error);
        }

        return errors;
    }

    public static String _validateTaskContent(String taskContent){
        if(taskContent == null || taskContent.equals("")){
            return "タスクを入力してください";
        }
        return "";
    }

}
