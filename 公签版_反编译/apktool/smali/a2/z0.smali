.class public final La2/z0;
.super Landroid/media/AudioTrack$StreamEventCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lv3/f;


# direct methods
.method public constructor <init>(Lv3/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, La2/z0;->a:Lv3/f;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDataRequest(Landroid/media/AudioTrack;I)V
    .locals 1

    .line 1
    iget-object p1, p0, La2/z0;->a:Lv3/f;

    .line 2
    .line 3
    iget-object p1, p1, Lv3/f;->d:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, La2/a1;

    .line 6
    .line 7
    iget-object p1, p1, La2/a1;->j:Lu1/m;

    .line 8
    .line 9
    new-instance p2, La2/u0;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    invoke-direct {p2, v0}, La2/u0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    invoke-virtual {p1, v0, p2}, Lu1/m;->e(ILu1/j;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onPresentationEnded(Landroid/media/AudioTrack;)V
    .locals 2

    .line 1
    iget-object p1, p0, La2/z0;->a:Lv3/f;

    .line 2
    .line 3
    iget-object p1, p1, Lv3/f;->d:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, La2/a1;

    .line 6
    .line 7
    iget-object p1, p1, La2/a1;->j:Lu1/m;

    .line 8
    .line 9
    new-instance v0, La2/u0;

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-direct {v0, v1}, La2/u0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    invoke-virtual {p1, v1, v0}, Lu1/m;->e(ILu1/j;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onTearDown(Landroid/media/AudioTrack;)V
    .locals 2

    .line 1
    iget-object p1, p0, La2/z0;->a:Lv3/f;

    .line 2
    .line 3
    iget-object p1, p1, Lv3/f;->d:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, La2/a1;

    .line 6
    .line 7
    iget-object p1, p1, La2/a1;->j:Lu1/m;

    .line 8
    .line 9
    new-instance v0, La2/u0;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-direct {v0, v1}, La2/u0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    invoke-virtual {p1, v1, v0}, Lu1/m;->e(ILu1/j;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
