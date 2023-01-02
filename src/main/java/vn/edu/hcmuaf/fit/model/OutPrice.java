package vn.edu.hcmuaf.fit.model;

public class OutPrice {
    private int outpriceId;
    private int productId;
    private String startDate;
    private String endDate;
    private double priceOut;
    private String status;

    public OutPrice(int outpriceId, int productId, String startDate, String endDate, double priceOut, String status) {
        this.outpriceId = outpriceId;
        this.productId = productId;
        this.startDate = startDate;
        this.endDate = endDate;
        this.priceOut = priceOut;
        this.status = status;
    }

    public OutPrice() {
    }

    public int getOutpriceId() {
        return outpriceId;
    }

    public void setOutpriceId(int outpriceId) {
        this.outpriceId = outpriceId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public double getPriceOut() {
        return priceOut;
    }

    public void setPriceOut(double priceOut) {
        this.priceOut = priceOut;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "OutPrice{" +
                "outpriceId=" + outpriceId +
                ", productId=" + productId +
                ", startDate='" + startDate + '\'' +
                ", endDate='" + endDate + '\'' +
                ", priceOut=" + priceOut +
                ", status='" + status + '\'' +
                '}';
    }
}
