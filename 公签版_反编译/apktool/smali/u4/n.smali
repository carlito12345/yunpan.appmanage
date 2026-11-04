.class public abstract Lu4/n;
.super Lu4/o;
.source "SourceFile"


# instance fields
.field public final b:Lx4/u;


# direct methods
.method public constructor <init>(Lx4/u;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lu4/o;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lu4/n;->b:Lx4/u;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 10
    .line 11
    const-string v0, "type == null"

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method
