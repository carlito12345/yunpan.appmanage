.class public abstract Lhh/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/security/cert/X509Certificate;

.field public static final b:Lhh/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    .line 3
    .line 4
    sput-object v0, Lhh/b;->a:[Ljava/security/cert/X509Certificate;

    .line 5
    .line 6
    new-instance v0, Lhh/c;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, v1}, Lhh/c;-><init>(I)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lhh/b;->b:Lhh/c;

    .line 13
    .line 14
    return-void
.end method
