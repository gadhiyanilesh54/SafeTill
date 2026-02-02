class AuthConfig {
  // Azure AD B2C details (replace later)
  static const String tenantName = "YOUR_TENANT_NAME";
  static const String clientId = "YOUR_CLIENT_ID";
  static const String policySignIn = "B2C_1_signin_signup";
  static const String redirectUri = "msauth://com.example.safetill/auth";

  static String authority(String policy) =>
      "https://$tenantName.b2clogin.com/"
      "$tenantName.onmicrosoft.com/$policy";
}