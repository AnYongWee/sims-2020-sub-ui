package sqisoft.com.bed.model;

public class PublicKeyInfo {
	private String publicKeyModulus;
	private String publicKeyExponent;
	
	public String getPublicKeyModulus() {
		return publicKeyModulus;
	}
	public void setPublicKeyModulus(String publicKeyModulus) {
		this.publicKeyModulus = publicKeyModulus;
	}
	public String getPublicKeyExponent() {
		return publicKeyExponent;
	}
	public void setPublicKeyExponent(String publicKeyExponent) {
		this.publicKeyExponent = publicKeyExponent;
	}
}
