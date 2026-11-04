.class public final Lj5/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb6/b;


# instance fields
.field public final a:Ljava/security/MessageDigest;

.field public final b:Lb6/d;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lb6/d;

    .line 5
    .line 6
    invoke-direct {v0}, Lb6/d;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lj5/i;->b:Lb6/d;

    .line 10
    .line 11
    iput-object p1, p0, Lj5/i;->a:Ljava/security/MessageDigest;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final b()Lb6/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lj5/i;->b:Lb6/d;

    .line 2
    .line 3
    return-object v0
.end method
