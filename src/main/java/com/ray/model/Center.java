package com.ray.model;

/**
 * Created by GengRui
 * on 2017/5/16 0016.
 */
public class Center {
    private Integer centerId;
    private String centerCity;
    private String centerAddress;
    private Integer floorAmount;
    private Integer storesAmount;
    private String centerIntroduction;
    private Integer isFinished;
    private String centerImage;
    private String floorMap;
    private Integer parkingPlace;
    private String centerLocation;

    public Center() {
    }

    public Center(Integer centerId, String centerCity, String centerAddress, Integer floorAmount, Integer storesAmount, String centerIntroduction, Integer isFinished, String centerImage, String floorMap, Integer parkingPlace, String centerLocation) {
        this.centerId = centerId;
        this.centerCity = centerCity;
        this.centerAddress = centerAddress;
        this.floorAmount = floorAmount;
        this.storesAmount = storesAmount;
        this.centerIntroduction = centerIntroduction;
        this.isFinished = isFinished;
        this.centerImage = centerImage;
        this.floorMap = floorMap;
        this.parkingPlace = parkingPlace;
        this.centerLocation = centerLocation;
    }

    public Integer getCenterId() {
        return centerId;
    }

    @Override
    public String toString() {
        return "Center{" +
                "centerId=" + centerId +
                ", centerCity='" + centerCity + '\'' +
                ", centerAddress='" + centerAddress + '\'' +
                ", floorAmount=" + floorAmount +
                ", storesAmount=" + storesAmount +
                ", centerIntroduction='" + centerIntroduction + '\'' +
                ", isFinished=" + isFinished +
                ", centerImage='" + centerImage + '\'' +
                ", floorMap='" + floorMap + '\'' +
                ", parkingPlace=" + parkingPlace +
                ", centerLocation='" + centerLocation + '\'' +
                '}';
    }

    public void setCenterId(Integer centerId) {
        this.centerId = centerId;
    }

    public String getCenterCity() {
        return centerCity;
    }

    public void setCenterCity(String centerCity) {
        this.centerCity = centerCity;
    }

    public String getCenterAddress() {
        return centerAddress;
    }

    public void setCenterAddress(String centerAddress) {
        this.centerAddress = centerAddress;
    }

    public Integer getFloorAmount() {
        return floorAmount;
    }

    public void setFloorAmount(Integer floorAmount) {
        this.floorAmount = floorAmount;
    }

    public Integer getStoresAmount() {
        return storesAmount;
    }

    public void setStoresAmount(Integer storesAmount) {
        this.storesAmount = storesAmount;
    }

    public String getCenterIntroduction() {
        return centerIntroduction;
    }

    public void setCenterIntroduction(String centerIntroduction) {
        this.centerIntroduction = centerIntroduction;
    }

    public Integer getIsFinished() {
        return isFinished;
    }

    public void setIsFinished(Integer isFinished) {
        this.isFinished = isFinished;
    }

    public String getCenterImage() {
        return centerImage;
    }

    public void setCenterImage(String centerImage) {
        this.centerImage = centerImage;
    }

    public String getFloorMap() {
        return floorMap;
    }

    public void setFloorMap(String floorMap) {
        this.floorMap = floorMap;
    }

    public Integer getParkingPlace() {
        return parkingPlace;
    }

    public void setParkingPlace(Integer parkingPlace) {
        this.parkingPlace = parkingPlace;
    }

    public String getCenterLocation() {
        return centerLocation;
    }

    public void setCenterLocation(String centerLocation) {
        this.centerLocation = centerLocation;
    }
}
