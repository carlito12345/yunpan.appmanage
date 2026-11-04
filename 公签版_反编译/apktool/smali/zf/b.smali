.class public abstract Lzf/b;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public final a:Lzf/i;

.field public final b:Ltf/d;


# direct methods
.method public constructor <init>(Lzf/i;Lag/m;[CZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lzf/b;->a:Lzf/i;

    .line 5
    .line 6
    invoke-virtual {p0, p2, p3, p4}, Lzf/b;->A(Lag/m;[CZ)Ltf/d;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lzf/b;->b:Ltf/d;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public abstract A(Lag/m;[CZ)Ltf/d;
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lzf/b;->a:Lzf/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public r()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lzf/b;->a:Lzf/i;

    .line 3
    .line 4
    iput-boolean v0, v1, Lzf/i;->c:Z

    .line 5
    .line 6
    return-void
.end method

.method public write(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzf/b;->a:Lzf/i;

    invoke-virtual {v0, p1}, Lzf/i;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lzf/b;->a:Lzf/i;

    invoke-virtual {v0, p1}, Lzf/i;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 3
    iget-object v0, p0, Lzf/b;->b:Ltf/d;

    invoke-interface {v0, p2, p3, p1}, Ltf/d;->d(II[B)I

    .line 4
    iget-object v0, p0, Lzf/b;->a:Lzf/i;

    invoke-virtual {v0, p1, p2, p3}, Lzf/i;->write([BII)V

    return-void
.end method
