.class public Lcom/rapid7/client/dcerpc/mssamr/dto/SecurityDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final securityDescriptor:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/SecurityDescriptor;->securityDescriptor:[B

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getSecurityDescriptor()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/dto/SecurityDescriptor;->securityDescriptor:[B

    .line 2
    .line 3
    return-object v0
.end method
