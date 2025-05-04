package com.theProfessorsPlate.model;

public class Delivery {
    private int deliveryId;
    private String deliveryPerson;
    private String deliveryStatus;
    private String deliveryPhone;
    private String deliveryLocation;

    public Delivery(int deliveryId, String deliveryPerson, String deliveryStatus, String deliveryPhone, String deliveryLocation) {
        this.deliveryId = deliveryId;
        this.deliveryPerson = deliveryPerson;
        this.deliveryStatus = deliveryStatus;
        this.deliveryPhone = deliveryPhone;
        this.deliveryLocation = deliveryLocation;
    }

	/**
	 * @return the deliveryId
	 */
	public int getDeliveryId() {
		return deliveryId;
	}

	/**
	 * @param deliveryId the deliveryId to set
	 */
	public void setDeliveryId(int deliveryId) {
		this.deliveryId = deliveryId;
	}

	/**
	 * @return the deliveryPerson
	 */
	public String getDeliveryPerson() {
		return deliveryPerson;
	}

	/**
	 * @param deliveryPerson the deliveryPerson to set
	 */
	public void setDeliveryPerson(String deliveryPerson) {
		this.deliveryPerson = deliveryPerson;
	}

	/**
	 * @return the deliveryStatus
	 */
	public String getDeliveryStatus() {
		return deliveryStatus;
	}

	/**
	 * @param deliveryStatus the deliveryStatus to set
	 */
	public void setDeliveryStatus(String deliveryStatus) {
		this.deliveryStatus = deliveryStatus;
	}

	/**
	 * @return the deliveryPhone
	 */
	public String getDeliveryPhone() {
		return deliveryPhone;
	}

	/**
	 * @param deliveryPhone the deliveryPhone to set
	 */
	public void setDeliveryPhone(String deliveryPhone) {
		this.deliveryPhone = deliveryPhone;
	}

	/**
	 * @return the deliveryLocation
	 */
	public String getDeliveryLocation() {
		return deliveryLocation;
	}

	/**
	 * @param deliveryLocation the deliveryLocation to set
	 */
	public void setDeliveryLocation(String deliveryLocation) {
		this.deliveryLocation = deliveryLocation;
	}

    // Getters and Setters
    
}