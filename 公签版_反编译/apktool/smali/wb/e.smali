.class public final synthetic Lwb/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmb/e;


# instance fields
.field public final synthetic a:Lwb/f;

.field public final synthetic b:Lu1/p;

.field public final synthetic c:Leb/c;

.field public final synthetic d:Lbd/e;

.field public final synthetic e:Lbd/e;


# direct methods
.method public synthetic constructor <init>(Lwb/f;Lu1/p;Leb/c;Lbd/e;Lbd/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwb/e;->a:Lwb/f;

    iput-object p2, p0, Lwb/e;->b:Lu1/p;

    iput-object p3, p0, Lwb/e;->c:Leb/c;

    iput-object p4, p0, Lwb/e;->d:Lbd/e;

    iput-object p5, p0, Lwb/e;->e:Lbd/e;

    return-void
.end method


# virtual methods
.method public final c(ILmb/h;Lag/h;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lwb/e;->a:Lwb/f;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget v0, p2, Lmb/h;->c:I

    .line 7
    .line 8
    iget-object v1, p0, Lwb/e;->c:Leb/c;

    .line 9
    .line 10
    iget-object v2, p0, Lwb/e;->b:Lu1/p;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v2, p2, v3, v0, v1}, Lu1/p;->d(Ljava/lang/CharSequence;IILeb/c;)F

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    float-to-int p2, p2

    .line 18
    iget-object v0, p1, Lwb/f;->h:Lwb/g;

    .line 19
    .line 20
    invoke-virtual {v0}, Lwb/c;->t()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lwb/g;->v(Ljava/util/List;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1}, Lwb/f;->b()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    add-int/2addr p2, v0

    .line 35
    iget-object p1, p0, Lwb/e;->d:Lbd/e;

    .line 36
    .line 37
    iget p3, p1, Lbd/e;->c:I

    .line 38
    .line 39
    invoke-virtual {p1, p3, p2}, Lbd/e;->b(II)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lwb/e;->e:Lbd/e;

    .line 43
    .line 44
    iget p2, p1, Lbd/e;->c:I

    .line 45
    .line 46
    invoke-virtual {p1, p2, v0}, Lbd/e;->b(II)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p3, Lag/h;->a:Z

    .line 52
    .line 53
    :goto_0
    return-void
.end method
