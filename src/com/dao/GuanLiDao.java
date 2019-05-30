package com.dao;

import com.entitly.GuanLi;

public interface GuanLiDao {
GuanLi Login(String glname,String glpwd);
boolean insertGuanLi(String glname,String glpwd);
}
