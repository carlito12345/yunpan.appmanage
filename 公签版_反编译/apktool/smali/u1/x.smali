.class public final Lu1/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ly1/x;

.field public final b:Lu1/s;

.field public final c:Ly1/t;

.field public final d:Lu1/z;

.field public final e:Lr1/o0;

.field public final f:Lu1/b0;

.field public final g:Lu1/t;

.field public final h:Lu1/u;

.field public final i:Lu1/v;

.field public final j:Lu1/w;


# direct methods
.method public constructor <init>(Ly1/x;Ly1/t;Lu1/z;IIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu1/x;->a:Ly1/x;

    .line 5
    .line 6
    iput-object p2, p0, Lu1/x;->c:Ly1/t;

    .line 7
    .line 8
    iput-object p3, p0, Lu1/x;->d:Lu1/z;

    .line 9
    .line 10
    new-instance p2, Lr1/o0;

    .line 11
    .line 12
    invoke-direct {p2}, Lr1/o0;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lu1/x;->e:Lr1/o0;

    .line 16
    .line 17
    new-instance p2, Lu1/i;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-direct {p2, v0, p0}, Lu1/i;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p1, Ly1/x;->v:Landroid/os/Looper;

    .line 24
    .line 25
    invoke-virtual {p3, v0, p2}, Lu1/z;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lu1/b0;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iput-object p2, p0, Lu1/x;->f:Lu1/b0;

    .line 30
    .line 31
    new-instance p2, Lu1/t;

    .line 32
    .line 33
    invoke-direct {p2, p0, p4}, Lu1/t;-><init>(Lu1/x;I)V

    .line 34
    .line 35
    .line 36
    iput-object p2, p0, Lu1/x;->g:Lu1/t;

    .line 37
    .line 38
    new-instance p2, Lu1/u;

    .line 39
    .line 40
    invoke-direct {p2, p0, p5}, Lu1/u;-><init>(Lu1/x;I)V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lu1/x;->h:Lu1/u;

    .line 44
    .line 45
    new-instance p2, Lu1/v;

    .line 46
    .line 47
    invoke-direct {p2, p0, p6}, Lu1/v;-><init>(Lu1/x;I)V

    .line 48
    .line 49
    .line 50
    iput-object p2, p0, Lu1/x;->i:Lu1/v;

    .line 51
    .line 52
    new-instance p2, Lu1/w;

    .line 53
    .line 54
    invoke-direct {p2, p0, p7}, Lu1/w;-><init>(Lu1/x;I)V

    .line 55
    .line 56
    .line 57
    iput-object p2, p0, Lu1/x;->j:Lu1/w;

    .line 58
    .line 59
    new-instance p2, Lu1/s;

    .line 60
    .line 61
    const/4 p3, 0x0

    .line 62
    invoke-direct {p2, p3, p0}, Lu1/s;-><init>(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iput-object p2, p0, Lu1/x;->b:Lu1/s;

    .line 66
    .line 67
    iget-object p1, p1, Ly1/x;->m:Lu1/m;

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Lu1/m;->a(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
