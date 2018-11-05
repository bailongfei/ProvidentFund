package com.aaa.entity;

import java.util.Date;

public class Individualpay {
private int grzhbhs;
private int personNO;
private String personalAccount;
private String certificateType;
private String IdNo;
private String personalDepositBase;
private String unitRateDeposit;
private String perContributionRate;
private String openAccountStatus;
private Date openingDate;
private String perAccountBalance;
private String lastYearLeftBalance;
private String thatYearLeftBalance;
private Double monPayAmount;
private Double unitMonPayAmount;
private String pinHouseholdsDate;
private String gfbankAccount;
private String bankName;
private String bankNameNum;
private String frozenType;
private String AccumulationRegularly;
private String currentAccumulation;
private String lastYearAccumulationRegularly;
private String lastYearcurrentAccumulation;
private String annualInterest;
private String demandInterest;
private String annualInterestAnd;
private String demandInterestAnd;
private String extractThisYear;
public Double getUnitMonPayAmount() {
	return unitMonPayAmount;
}
public void setUnitMonPayAmount(Double unitMonPayAmount) {
	this.unitMonPayAmount = unitMonPayAmount;
}
public int getGrzhbhs() {
	return grzhbhs;
}
public void setGrzhbhs(int grzhbhs) {
	this.grzhbhs = grzhbhs;
}
public int getPersonNO() {
	return personNO;
}
public void setPersonNO(int personNO) {
	this.personNO = personNO;
}
public String getPersonalAccount() {
	return personalAccount;
}
public void setPersonalAccount(String personalAccount) {
	this.personalAccount = personalAccount;
}
public String getCertificateType() {
	return certificateType;
}
public void setCertificateType(String certificateType) {
	this.certificateType = certificateType;
}
public String getIdNo() {
	return IdNo;
}
public void setIdNo(String idNo) {
	IdNo = idNo;
}
public String getPersonalDepositBase() {
	return personalDepositBase;
}
public void setPersonalDepositBase(String personalDepositBase) {
	this.personalDepositBase = personalDepositBase;
}
public String getUnitRateDeposit() {
	return unitRateDeposit;
}
public void setUnitRateDeposit(String unitRateDeposit) {
	this.unitRateDeposit = unitRateDeposit;
}
public String getPerContributionRate() {
	return perContributionRate;
}
public void setPerContributionRate(String perContributionRate) {
	this.perContributionRate = perContributionRate;
}
public String getOpenAccountStatus() {
	return openAccountStatus;
}
public void setOpenAccountStatus(String openAccountStatus) {
	this.openAccountStatus = openAccountStatus;
}
public Date getOpeningDate() {
	return openingDate;
}
public void setOpeningDate(Date openingDate) {
	this.openingDate = openingDate;
}
public String getPerAccountBalance() {
	return perAccountBalance;
}
public void setPerAccountBalance(String perAccountBalance) {
	this.perAccountBalance = perAccountBalance;
}
public String getLastYearLeftBalance() {
	return lastYearLeftBalance;
}
public void setLastYearLeftBalance(String lastYearLeftBalance) {
	this.lastYearLeftBalance = lastYearLeftBalance;
}
public String getThatYearLeftBalance() {
	return thatYearLeftBalance;
}
public void setThatYearLeftBalance(String thatYearLeftBalance) {
	this.thatYearLeftBalance = thatYearLeftBalance;
}
public Double getMonPayAmount() {
	return monPayAmount;
}
public void setMonPayAmount(Double monPayAmount) {
	this.monPayAmount = monPayAmount;
}
public String getPinHouseholdsDate() {
	return pinHouseholdsDate;
}
public void setPinHouseholdsDate(String pinHouseholdsDate) {
	this.pinHouseholdsDate = pinHouseholdsDate;
}
public String getGfbankAccount() {
	return gfbankAccount;
}
public void setGfbankAccount(String gfbankAccount) {
	this.gfbankAccount = gfbankAccount;
}
public String getBankName() {
	return bankName;
}
public void setBankName(String bankName) {
	this.bankName = bankName;
}
public String getBankNameNum() {
	return bankNameNum;
}
public void setBankNameNum(String bankNameNum) {
	this.bankNameNum = bankNameNum;
}
public String getFrozenType() {
	return frozenType;
}
public void setFrozenType(String frozenType) {
	this.frozenType = frozenType;
}
public String getAccumulationRegularly() {
	return AccumulationRegularly;
}
public void setAccumulationRegularly(String accumulationRegularly) {
	AccumulationRegularly = accumulationRegularly;
}
public String getCurrentAccumulation() {
	return currentAccumulation;
}
public void setCurrentAccumulation(String currentAccumulation) {
	this.currentAccumulation = currentAccumulation;
}
public String getLastYearAccumulationRegularly() {
	return lastYearAccumulationRegularly;
}
public void setLastYearAccumulationRegularly(String lastYearAccumulationRegularly) {
	this.lastYearAccumulationRegularly = lastYearAccumulationRegularly;
}
public String getLastYearcurrentAccumulation() {
	return lastYearcurrentAccumulation;
}
public void setLastYearcurrentAccumulation(String lastYearcurrentAccumulation) {
	this.lastYearcurrentAccumulation = lastYearcurrentAccumulation;
}
public String getAnnualInterest() {
	return annualInterest;
}
public void setAnnualInterest(String annualInterest) {
	this.annualInterest = annualInterest;
}
public String getDemandInterest() {
	return demandInterest;
}
public void setDemandInterest(String demandInterest) {
	this.demandInterest = demandInterest;
}
public String getAnnualInterestAnd() {
	return annualInterestAnd;
}
public void setAnnualInterestAnd(String annualInterestAnd) {
	this.annualInterestAnd = annualInterestAnd;
}
public String getDemandInterestAnd() {
	return demandInterestAnd;
}
public void setDemandInterestAnd(String demandInterestAnd) {
	this.demandInterestAnd = demandInterestAnd;
}
public String getExtractThisYear() {
	return extractThisYear;
}
public void setExtractThisYear(String extractThisYear) {
	this.extractThisYear = extractThisYear;
}
public Individualpay() {
	super();
	// TODO Auto-generated constructor stub
}
public Individualpay(int grzhbhs, int personNO, String personalAccount, String certificateType, String idNo,
		String personalDepositBase, String unitRateDeposit, String perContributionRate, String openAccountStatus,
		Date openingDate, String perAccountBalance, String lastYearLeftBalance, String thatYearLeftBalance,
		Double monPayAmount, Double unitMonPayAmount, String pinHouseholdsDate, String gfbankAccount, String bankName,
		String bankNameNum, String frozenType, String accumulationRegularly, String currentAccumulation,
		String lastYearAccumulationRegularly, String lastYearcurrentAccumulation, String annualInterest,
		String demandInterest, String annualInterestAnd, String demandInterestAnd, String extractThisYear) {
	super();
	this.grzhbhs = grzhbhs;
	this.personNO = personNO;
	this.personalAccount = personalAccount;
	this.certificateType = certificateType;
	IdNo = idNo;
	this.personalDepositBase = personalDepositBase;
	this.unitRateDeposit = unitRateDeposit;
	this.perContributionRate = perContributionRate;
	this.openAccountStatus = openAccountStatus;
	this.openingDate = openingDate;
	this.perAccountBalance = perAccountBalance;
	this.lastYearLeftBalance = lastYearLeftBalance;
	this.thatYearLeftBalance = thatYearLeftBalance;
	this.monPayAmount = monPayAmount;
	this.unitMonPayAmount = unitMonPayAmount;
	this.pinHouseholdsDate = pinHouseholdsDate;
	this.gfbankAccount = gfbankAccount;
	this.bankName = bankName;
	this.bankNameNum = bankNameNum;
	this.frozenType = frozenType;
	AccumulationRegularly = accumulationRegularly;
	this.currentAccumulation = currentAccumulation;
	this.lastYearAccumulationRegularly = lastYearAccumulationRegularly;
	this.lastYearcurrentAccumulation = lastYearcurrentAccumulation;
	this.annualInterest = annualInterest;
	this.demandInterest = demandInterest;
	this.annualInterestAnd = annualInterestAnd;
	this.demandInterestAnd = demandInterestAnd;
	this.extractThisYear = extractThisYear;
}
@Override
public String toString() {
	return "Individualpay [grzhbhs=" + grzhbhs + ", personNO=" + personNO + ", personalAccount=" + personalAccount
			+ ", certificateType=" + certificateType + ", IdNo=" + IdNo + ", personalDepositBase=" + personalDepositBase
			+ ", unitRateDeposit=" + unitRateDeposit + ", perContributionRate=" + perContributionRate
			+ ", openAccountStatus=" + openAccountStatus + ", openingDate=" + openingDate + ", perAccountBalance="
			+ perAccountBalance + ", lastYearLeftBalance=" + lastYearLeftBalance + ", thatYearLeftBalance="
			+ thatYearLeftBalance + ", monPayAmount=" + monPayAmount + ", unitMonPayAmount=" + unitMonPayAmount
			+ ", pinHouseholdsDate=" + pinHouseholdsDate + ", gfbankAccount=" + gfbankAccount + ", bankName=" + bankName
			+ ", bankNameNum=" + bankNameNum + ", frozenType=" + frozenType + ", AccumulationRegularly="
			+ AccumulationRegularly + ", currentAccumulation=" + currentAccumulation
			+ ", lastYearAccumulationRegularly=" + lastYearAccumulationRegularly + ", lastYearcurrentAccumulation="
			+ lastYearcurrentAccumulation + ", annualInterest=" + annualInterest + ", demandInterest=" + demandInterest
			+ ", annualInterestAnd=" + annualInterestAnd + ", demandInterestAnd=" + demandInterestAnd
			+ ", extractThisYear=" + extractThisYear + "]";
}

}