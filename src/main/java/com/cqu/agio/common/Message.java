package com.cqu.agio.common;

import java.util.HashMap;


public class Message extends HashMap<String,Object>{
    private Status status;
    public Message(Status status){
        super();
        this.status = status;
        put("status",status.getCode());
        put("message",status.getMessage());
    }

    /**
     * the default status is 0 meaning that it is ok
     */
    public Message(){
        super();
        this.status = Status.RETURN_OK;
        put("status",this.status.getCode());
        put("message", this.status.getMessage());
    }

    public void setMessage(Status status){
        this.status = status;
        put("status",status.getCode());
        put("message",status.getMessage());
    }

    /**
     * 存放结果，只能存放一个对象，后来添加的对象会将前边添加的对象覆盖
     * @param object
     */
    public void setResult(Object object){
        put("result",object);
    }

    public Object getResult(){
        return get("result");
    }

    /**
     * 清空以前的数据
     */
    public void clear(){
        super.clear();
        this.status = Status.RETURN_OK;
    }

    /**
     * is operation successful
     * @return
     */
    public boolean isSuccess(){
        return this.status.getCode() == 0 ? true : false;
    }
}
