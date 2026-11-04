package com.hierynomus.smbj.auth;

import javax.security.auth.Subject;
import org.ietf.jgss.GSSCredential;

/* loaded from: classes.dex */
public class GSSAuthenticationContext extends AuthenticationContext {
    GSSCredential creds;
    Subject subject;

    public GSSAuthenticationContext(String str, String str2, Subject subject, GSSCredential gSSCredential) {
        super(str, new char[0], str2);
        this.subject = subject;
        this.creds = gSSCredential;
    }

    public GSSCredential getCreds() {
        return this.creds;
    }

    public Subject getSubject() {
        return this.subject;
    }

    @Override // com.hierynomus.smbj.auth.AuthenticationContext
    public String toString() {
        return "GSSAuthenticationContext[" + this.subject + ']';
    }
}
