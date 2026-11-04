.class public final synthetic Lcom/hierynomus/smbj/auth/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hierynomus/smbj/auth/a;->a:I

    iput-object p2, p0, Lcom/hierynomus/smbj/auth/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1

    .line 1
    iget v0, p0, Lcom/hierynomus/smbj/auth/a;->a:I

    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    .line 1
    iget v0, p0, Lcom/hierynomus/smbj/auth/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1

    .line 1
    iget v0, p0, Lcom/hierynomus/smbj/auth/a;->a:I

    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/hierynomus/smbj/auth/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/hierynomus/smbj/auth/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Class;

    .line 9
    .line 10
    check-cast p1, Lph/q;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :pswitch_0
    iget-object v0, p0, Lcom/hierynomus/smbj/auth/a;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    check-cast p1, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :pswitch_1
    check-cast p1, Ljava/lang/Class;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/hierynomus/smbj/auth/a;->b:Ljava/lang/Object;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :pswitch_2
    check-cast p1, Lhi/a;

    .line 38
    .line 39
    iget-object p1, p1, Lhi/a;->a:Ljava/lang/Object;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/hierynomus/smbj/auth/a;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Lfa/j0;

    .line 44
    .line 45
    if-ne p1, v0, :cond_0

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 p1, 0x0

    .line 50
    :goto_0
    return p1

    .line 51
    :pswitch_3
    check-cast p1, Lhi/a;

    .line 52
    .line 53
    iget-object p1, p1, Lhi/a;->a:Ljava/lang/Object;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/hierynomus/smbj/auth/a;->b:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Lfa/l0;

    .line 58
    .line 59
    if-ne p1, v0, :cond_1

    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const/4 p1, 0x0

    .line 64
    :goto_1
    return p1

    .line 65
    :pswitch_4
    check-cast p1, Lhi/a;

    .line 66
    .line 67
    iget-object p1, p1, Lhi/a;->a:Ljava/lang/Object;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/hierynomus/smbj/auth/a;->b:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Lfa/k0;

    .line 72
    .line 73
    if-ne p1, v0, :cond_2

    .line 74
    .line 75
    const/4 p1, 0x1

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    const/4 p1, 0x0

    .line 78
    :goto_2
    return p1

    .line 79
    :pswitch_5
    iget-object v0, p0, Lcom/hierynomus/smbj/auth/a;->b:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v0, Lcom/hierynomus/ntlm/messages/NtlmChallenge;

    .line 82
    .line 83
    check-cast p1, Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;

    .line 84
    .line 85
    invoke-static {v0, p1}, Lcom/hierynomus/smbj/auth/NtlmAuthenticator;->a(Lcom/hierynomus/ntlm/messages/NtlmChallenge;Lcom/hierynomus/ntlm/messages/NtlmNegotiateFlag;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    return p1

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
