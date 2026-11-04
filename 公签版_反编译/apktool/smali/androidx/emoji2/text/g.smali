.class public final Landroidx/emoji2/text/g;
.super La9/o;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroidx/emoji2/text/h;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/emoji2/text/g;->b:Landroidx/emoji2/text/h;

    .line 2
    .line 3
    invoke-direct {p0}, La9/o;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final S(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/g;->b:Landroidx/emoji2/text/h;

    .line 2
    .line 3
    iget-object v0, v0, La1/i;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroidx/emoji2/text/l;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/emoji2/text/l;->d(Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final T(La2/w0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/g;->b:Landroidx/emoji2/text/h;

    .line 2
    .line 3
    iput-object p1, v0, Landroidx/emoji2/text/h;->d:La2/w0;

    .line 4
    .line 5
    new-instance p1, La2/g1;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/emoji2/text/h;->d:La2/w0;

    .line 8
    .line 9
    new-instance v2, Lm7/e;

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    invoke-direct {v2, v3}, Lm7/e;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iget-object v3, v0, La1/i;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, Landroidx/emoji2/text/l;

    .line 18
    .line 19
    iget-object v3, v3, Landroidx/emoji2/text/l;->h:Landroidx/emoji2/text/f;

    .line 20
    .line 21
    invoke-direct {p1, v1, v2, v3}, La2/g1;-><init>(La2/w0;Lm7/e;Landroidx/emoji2/text/f;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, v0, Landroidx/emoji2/text/h;->c:La2/g1;

    .line 25
    .line 26
    iget-object p1, v0, La1/i;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Landroidx/emoji2/text/l;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/emoji2/text/l;->e()V

    .line 31
    .line 32
    .line 33
    return-void
.end method
