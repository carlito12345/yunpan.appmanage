.class public final Lja/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lx9/w3;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lja/e;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lja/e;->b:Lx9/w3;

    .line 8
    iput-object p1, p0, Lja/e;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lx9/w3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lja/e;->c:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lja/e;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lja/e;->b:Lx9/w3;

    return-void
.end method
