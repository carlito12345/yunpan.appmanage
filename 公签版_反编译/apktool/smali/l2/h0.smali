.class public final Ll2/h0;
.super Ll2/u;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ll2/c0;

.field public final synthetic c:Landroidx/recyclerview/widget/h;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/h;Ll2/c0;Ll2/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll2/h0;->c:Landroidx/recyclerview/widget/h;

    .line 2
    .line 3
    iput-object p3, p0, Ll2/h0;->b:Ll2/c0;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Ll2/u;-><init>(Ll2/c0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final f(J)Ll2/b0;
    .locals 8

    .line 1
    iget-object v0, p0, Ll2/h0;->b:Ll2/c0;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ll2/c0;->f(J)Ll2/b0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance p2, Ll2/b0;

    .line 8
    .line 9
    new-instance v0, Ll2/d0;

    .line 10
    .line 11
    iget-object v1, p1, Ll2/b0;->a:Ll2/d0;

    .line 12
    .line 13
    iget-wide v2, v1, Ll2/d0;->a:J

    .line 14
    .line 15
    iget-object v4, p0, Ll2/h0;->c:Landroidx/recyclerview/widget/h;

    .line 16
    .line 17
    iget-wide v4, v4, Landroidx/recyclerview/widget/h;->b:J

    .line 18
    .line 19
    iget-wide v6, v1, Ll2/d0;->b:J

    .line 20
    .line 21
    add-long/2addr v6, v4

    .line 22
    invoke-direct {v0, v2, v3, v6, v7}, Ll2/d0;-><init>(JJ)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Ll2/d0;

    .line 26
    .line 27
    iget-object p1, p1, Ll2/b0;->b:Ll2/d0;

    .line 28
    .line 29
    iget-wide v2, p1, Ll2/d0;->a:J

    .line 30
    .line 31
    iget-wide v6, p1, Ll2/d0;->b:J

    .line 32
    .line 33
    add-long/2addr v6, v4

    .line 34
    invoke-direct {v1, v2, v3, v6, v7}, Ll2/d0;-><init>(JJ)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p2, v0, v1}, Ll2/b0;-><init>(Ll2/d0;Ll2/d0;)V

    .line 38
    .line 39
    .line 40
    return-object p2
.end method
