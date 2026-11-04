.class public abstract Ll2/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/c0;


# instance fields
.field public final a:Ll2/c0;


# direct methods
.method public constructor <init>(Ll2/c0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll2/u;->a:Ll2/c0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ll2/u;->a:Ll2/c0;

    .line 2
    .line 3
    invoke-interface {v0}, Ll2/c0;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ll2/u;->a:Ll2/c0;

    .line 2
    .line 3
    invoke-interface {v0}, Ll2/c0;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public f(J)Ll2/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Ll2/u;->a:Ll2/c0;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ll2/c0;->f(J)Ll2/b0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public h()J
    .locals 2

    .line 1
    iget-object v0, p0, Ll2/u;->a:Ll2/c0;

    .line 2
    .line 3
    invoke-interface {v0}, Ll2/c0;->h()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method
