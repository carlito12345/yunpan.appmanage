.class public final synthetic Ly1/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf2/d0;


# instance fields
.field public final synthetic a:Lm7/l;


# direct methods
.method public synthetic constructor <init>(Lm7/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/p0;->a:Lm7/l;

    return-void
.end method


# virtual methods
.method public final a(Lf2/a;Lr1/q0;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ly1/p0;->a:Lm7/l;

    .line 2
    .line 3
    iget-object p1, p1, Lm7/l;->f:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Ly1/f0;

    .line 6
    .line 7
    const/4 p2, 0x2

    .line 8
    iget-object p1, p1, Ly1/f0;->h:Lu1/b0;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lu1/b0;->e(I)V

    .line 11
    .line 12
    .line 13
    const/16 p2, 0x16

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lu1/b0;->f(I)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method
