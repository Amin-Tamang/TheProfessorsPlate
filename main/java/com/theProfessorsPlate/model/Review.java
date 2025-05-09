package com.TheProfessorsPlate.model;

public class Review {
    private int reviewId;
    private double rating;
    private String reviewDescription;
    private String reviewDate;

    public Review(int reviewId, double rating, String reviewDescription, String reviewDate) {
        this.reviewId = reviewId;
        this.rating = rating;
        this.reviewDescription = reviewDescription;
        this.reviewDate = reviewDate;
    }

	/**
	 * @return the reviewId
	 */
	public int getReviewId() {
		return reviewId;
	}

	/**
	 * @param reviewId the reviewId to set
	 */
	public void setReviewId(int reviewId) {
		this.reviewId = reviewId;
	}

	/**
	 * @return the rating
	 */
	public double getRating() {
		return rating;
	}

	/**
	 * @param rating the rating to set
	 */
	public void setRating(double rating) {
		this.rating = rating;
	}

	/**
	 * @return the reviewDescription
	 */
	public String getReviewDescription() {
		return reviewDescription;
	}

	/**
	 * @param reviewDescription the reviewDescription to set
	 */
	public void setReviewDescription(String reviewDescription) {
		this.reviewDescription = reviewDescription;
	}

	/**
	 * @return the reviewDate
	 */
	public String getReviewDate() {
		return reviewDate;
	}

	/**
	 * @param reviewDate the reviewDate to set
	 */
	public void setReviewDate(String reviewDate) {
		this.reviewDate = reviewDate;
	}

    // Getters and Setters
    
}