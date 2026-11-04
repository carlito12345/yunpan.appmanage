.class public abstract Lw4/c;
.super Lw4/f;
.source "SourceFile"


# instance fields
.field public final e:Lx4/a;


# direct methods
.method public constructor <init>(Lw4/n;Lw4/p;Lw4/k;Lw4/l;Lx4/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lw4/f;-><init>(Lw4/n;Lw4/p;Lw4/k;Lw4/l;)V

    .line 2
    .line 3
    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    iput-object p5, p0, Lw4/c;->e:Lx4/a;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 10
    .line 11
    const-string p2, "cst == null"

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw4/c;->e:Lx4/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lb5/h;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
