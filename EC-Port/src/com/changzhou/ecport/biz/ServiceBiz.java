package com.changzhou.ecport.biz;

import java.util.List;

import com.changzhou.ecport.entity.Product;
import com.changzhou.ecport.entity.User;

public interface ServiceBiz {
	public User IsLogin(String name,String pwd);//�ж��Ƿ��¼
	public void UpdateUser(User user);//�����û���Ϣ
	public List ShowProInfo();//�õ�������Ʒ��Ϣ
	public Product ShowProInfoById(String id);//ͨ����ƷID�õ���Ʒ��ϸ��Ϣ
	public boolean IsUse (String name);//�ж��Ƿ��д��û���
	public void InsertUser(User user);//ע���û�
	public void addOrders(int id,float cost, String name,int paywayid);//���Ӷ���
	public void addOrderLine(int orderid, int productid, int amount);//�ڶ�����������Ʒ
	public int getMaxid();//����ʵ��ID��������һ
	public List getOrders(String name);//���ڲ��Ҷ���
	public void removeOrder(String name);//ͨ���������,ɾ������
	public List getProOrder(String name);//ͨ�������õ����������Ʒ�б�
	public String getPay(String name);//�õ����ʽ
//	public List findByName(String name);//
}
