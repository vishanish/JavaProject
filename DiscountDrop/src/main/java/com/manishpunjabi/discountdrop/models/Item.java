package com.manishpunjabi.discountdrop.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "items")
public class Item {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
	@NotEmpty(message="Template title is required!")
	@Size(min=1, max=30, message="Template title must be between 1 and 200 characters")
	private String template;
	
	@NotEmpty(message="Logo link is required!")
	@Size(min=1, max=30, message="Logo link is required")
	private String logoLink;
	
	@NotEmpty(message="Business name is required!")
    @Size(min=1, max=30, message="Business name must be between 1 and 30 characters")
    private String businessName;
	
	@NotEmpty(message="Image link is required!")
    @Size(min=1, max=30, message="Image link is required")
    private String imageLink;
	
	@NotEmpty(message="Description is required!")
    @Size(min=1, max=30, message="Desciption must be between 1 and 200 characters")
    private String description;
	
	@NotNull
    @Min(1)
    private Double originalPrice;
	
	@NotNull
    @Min(1)
    private Double discountPrice;
	
	@NotNull
    private String categories;
	
	@DateTimeFormat(pattern="mm-dd-yyyy")
	private Date expiryDate;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="coupon_id")
	private User coupon;
	
	@Column(updatable=false)
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date createdAt;
	
	@PrePersist
    protected void onCreate(){
        this.createdAt = new Date();
    }
	
	public Item() {}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTemplate() {
		return template;
	}

	public void setTemplate(String template) {
		this.template = template;
	}

	public String getLogoLink() {
		return logoLink;
	}

	public void setLogoLink(String logoLink) {
		this.logoLink = logoLink;
	}

	public String getBusinessName() {
		return businessName;
	}

	public void setBusinessName(String businessName) {
		this.businessName = businessName;
	}

	public String getImageLink() {
		return imageLink;
	}

	public void setImageLink(String imageLink) {
		this.imageLink = imageLink;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Double getOriginalPrice() {
		return originalPrice;
	}

	public void setOriginalPrice(Double originalPrice) {
		this.originalPrice = originalPrice;
	}

	public Double getDiscountPrice() {
		return discountPrice;
	}

	public void setDiscountPrice(Double discountPrice) {
		this.discountPrice = discountPrice;
	}

	public String getCategories() {
		return categories;
	}

	public void setCategories(String categories) {
		this.categories = categories;
	}
	
	public User getCoupon() {
		return coupon;
	}

	public void setCoupon(User coupon) {
		this.coupon = coupon;
	}

	public Date getExpiryDate() {
		return expiryDate;
	}
	
	public void setExpiryDate(Date expiryDate) {
		this.expiryDate = expiryDate;
	}
	
	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
}
