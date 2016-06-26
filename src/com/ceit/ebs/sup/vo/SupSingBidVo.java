package com.ceit.ebs.sup.vo;

import com.ceit.ebs.sup.entity.SupSingBid;

/**
 * SupSingBid 系统的供应商唱标明细构件
 * @author czg
 * date 2014-8-15
 */

public class SupSingBidVo  implements java.io.Serializable {


    // Fields    

     private Integer id;               //主键
     private Integer projectId;        //项目ID
     private Integer packageId;        //包ID
     private Integer objectId;         //标ID
     private String singBidName;       //唱标项名称
     private String singSuppValueEnc;  //唱标项的值(密文)
     private String singSuppValueDec;  //唱标项的值(明文)
     private Integer supplierId;       //供应商Id
     private String opTime;            //最后更新时间
     private String isValid;           
     private String createTime;        //创建时间
     private String decryptStatus;     //解密状态：unDecrypt，未解密;decrypting，正在解密;decryptSuccess，解密成功;decryptFail，解密失败
     private String isOpenBid;         //是否开标
     private Integer dispIndex;        //排序索引


    // Constructors

    /** default constructor */
    public SupSingBidVo() {
    }

	/** minimal constructor */
    public SupSingBidVo(Integer id) {
        this.id = id;
    }
    
    /** full constructor */
    public SupSingBidVo(Integer id, Integer projectId, Integer packageId, Integer objectId, String singBidName, String singSuppValueEnc, String singSuppValueDec, Integer supplierId, String opTime, String isValid, String createTime, String decryptStatus, String isOpenBid, Integer dispIndex) {
        this.id = id;
        this.projectId = projectId;
        this.packageId = packageId;
        this.objectId = objectId;
        this.singBidName = singBidName;
        this.singSuppValueEnc = singSuppValueEnc;
        this.singSuppValueDec = singSuppValueDec;
        this.supplierId = supplierId;
        this.opTime = opTime;
        this.isValid = isValid;
        this.createTime = createTime;
        this.decryptStatus = decryptStatus;
        this.isOpenBid = isOpenBid;
        this.dispIndex = dispIndex;
    }

    //po->vo
  	public SupSingBidVo(SupSingBid e){
        this.setId(e.getId());
        this.setProjectId(e.getProjectId());
        this.setPackageId(e.getPackageId());
        this.setObjectId(e.getObjectId());
        this.setSingBidName(e.getSingBidName());
        this.setSingSuppValueEnc(e.getSingSuppValueEnc());
        this.setSingSuppValueDec(e.getSingSuppValueDec());
        this.setSupplierId(e.getSupplierId());
        this.setOpTime(e.getOpTime());
        this.setIsValid(e.getIsValid());
        this.setCreateTime(e.getCreateTime());
        this.setDecryptStatus(e.getDecryptStatus());
        this.setIsOpenBid(e.getIsOpenBid());
        this.setDispIndex(e.getDispIndex());
  	}
  	
  	//此方法将vo转为po
  	public SupSingBid adapterToSupSingBid(){
  		SupSingBid e = new SupSingBid();
        e.setId(this.getId());
        e.setProjectId(this.getProjectId());
        e.setPackageId(this.getPackageId());
        e.setObjectId(this.getObjectId());
        e.setSingBidName(this.getSingBidName());
        e.setSingSuppValueEnc(this.getSingSuppValueEnc());
        e.setSingSuppValueDec(this.getSingSuppValueDec());
        e.setSupplierId(this.getSupplierId());
        e.setOpTime(this.getOpTime());
        e.setIsValid(this.getIsValid());
        e.setCreateTime(this.getCreateTime());
        e.setDecryptStatus(this.getDecryptStatus());
        e.setIsOpenBid(this.getIsOpenBid());
        e.setDispIndex(this.getDispIndex());
  		return e;
  	}
   
   
    // Property accessors

    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getProjectId() {
        return this.projectId;
    }
    
    public void setProjectId(Integer projectId) {
        this.projectId = projectId;
    }

    public Integer getPackageId() {
        return this.packageId;
    }
    
    public void setPackageId(Integer packageId) {
        this.packageId = packageId;
    }

    public Integer getObjectId() {
        return this.objectId;
    }
    
    public void setObjectId(Integer objectId) {
        this.objectId = objectId;
    }

    public String getSingBidName() {
        return this.singBidName;
    }
    
    public void setSingBidName(String singBidName) {
        this.singBidName = singBidName;
    }

    public String getSingSuppValueEnc() {
        return this.singSuppValueEnc;
    }
    
    public void setSingSuppValueEnc(String singSuppValueEnc) {
        this.singSuppValueEnc = singSuppValueEnc;
    }

    public String getSingSuppValueDec() {
        return this.singSuppValueDec;
    }
    
    public void setSingSuppValueDec(String singSuppValueDec) {
        this.singSuppValueDec = singSuppValueDec;
    }

    public Integer getSupplierId() {
        return this.supplierId;
    }
    
    public void setSupplierId(Integer supplierId) {
        this.supplierId = supplierId;
    }

    public String getOpTime() {
        return this.opTime;
    }
    
    public void setOpTime(String opTime) {
        this.opTime = opTime;
    }

    public String getIsValid() {
        return this.isValid;
    }
    
    public void setIsValid(String isValid) {
        this.isValid = isValid;
    }

    public String getCreateTime() {
        return this.createTime;
    }
    
    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getDecryptStatus() {
        return this.decryptStatus;
    }
    
    public void setDecryptStatus(String decryptStatus) {
        this.decryptStatus = decryptStatus;
    }

    public String getIsOpenBid() {
        return this.isOpenBid;
    }
    
    public void setIsOpenBid(String isOpenBid) {
        this.isOpenBid = isOpenBid;
    }

    public Integer getDispIndex() {
        return this.dispIndex;
    }
    
    public void setDispIndex(Integer dispIndex) {
        this.dispIndex = dispIndex;
    }
   








}