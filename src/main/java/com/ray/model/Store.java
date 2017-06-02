package com.ray.model;

/**
 * Created by GengRui
 * on 2017/5/16 0016.
 */
public class Store {
    private Integer storeId;
    private Integer centerId;
    private Integer storeArea;
    private Double storePrice;
    private String storeState;
    private Integer storeFloor;
    private String storeType;
    private String storeIntroduction;
    private String storeImage;
    private String storeBrand;

    public Store() {
    }

    @Override
    public String toString() {
        return "Store{" +
                "storeId=" + storeId +
                ", centerId=" + centerId +
                ", storeArea=" + storeArea +
                ", storePrice=" + storePrice +
                ", storeState='" + storeState + '\'' +
                ", storeFloor=" + storeFloor +
                ", storeType='" + storeType + '\'' +
                ", storeIntroduction='" + storeIntroduction + '\'' +
                ", storeImage='" + storeImage + '\'' +
                ", storeBrand='" + storeBrand + '\'' +
                '}';
    }

    public Store(Integer storeId, Integer centerId, Integer storeArea, Double storePrice, String storeState, Integer storeFloor, String storeType, String storeIntroduction, String storeImage, String storeBrand) {
        this.storeId = storeId;
        this.centerId = centerId;
        this.storeArea = storeArea;
        this.storePrice = storePrice;
        this.storeState = storeState;
        this.storeFloor = storeFloor;
        this.storeType = storeType;
        this.storeIntroduction = storeIntroduction;
        this.storeImage = storeImage;
        this.storeBrand = storeBrand;
    }

    public Integer getStoreId() {
        return storeId;
    }

    public void setStoreId(Integer storeId) {
        this.storeId = storeId;
    }

    public Integer getCenterId() {
        return centerId;
    }

    public void setCenterId(Integer centerId) {
        this.centerId = centerId;
    }

    public Integer getStoreArea() {
        return storeArea;
    }

    public void setStoreArea(Integer storeArea) {
        this.storeArea = storeArea;
    }

    public Double getStorePrice() {
        return storePrice;
    }

    public void setStorePrice(Double storePrice) {
        this.storePrice = storePrice;
    }

    public String getStoreState() {
        return storeState;
    }

    public void setStoreState(String storeState) {
        this.storeState = storeState;
    }

    public Integer getStoreFloor() {
        return storeFloor;
    }

    public void setStoreFloor(Integer storeFloor) {
        this.storeFloor = storeFloor;
    }

    public String getStoreType() {
        return storeType;
    }

    public void setStoreType(String storeType) {
        this.storeType = storeType;
    }

    public String getStoreIntroduction() {
        return storeIntroduction;
    }

    public void setStoreIntroduction(String storeIntroduction) {
        this.storeIntroduction = storeIntroduction;
    }

    public String getStoreImage() {
        return storeImage;
    }

    public void setStoreImage(String storeImage) {
        this.storeImage = storeImage;
    }

    public String getStoreBrand() {
        return storeBrand;
    }

    public void setStoreBrand(String storeBrand) {
        this.storeBrand = storeBrand;
    }
}
