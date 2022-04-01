package model;
//chứa thong tin sản phẩm trong đơn hàng
public class ProductOrders {
	
	private int orderId;
	private int productId;
	private String srcProduct;
	private int amountProduct; //quantity of selected product
	private String nameProduct;
	
	public ProductOrders(int orderId, int productId, String srcProduct, int amountProduct, String nameProduct) {
		this.orderId =orderId;
		this.productId = productId;
		this.srcProduct = srcProduct;
		this.amountProduct = amountProduct;
		this.nameProduct = nameProduct;
	}
	
	public String getSrcProduct() {
		return srcProduct;
	}

	public void setSrcProduct(String srcProduct) {
		this.srcProduct = srcProduct;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public int getAmountProduct() {
		return amountProduct;
	}

	public void setAmountProduct(int amountProduct) {
		this.amountProduct = amountProduct;
	}

	public String getNameProduct() {
		return nameProduct;
	}

	public void setNameProduct(String nameProduct) {
		this.nameProduct = nameProduct;
	}

}
