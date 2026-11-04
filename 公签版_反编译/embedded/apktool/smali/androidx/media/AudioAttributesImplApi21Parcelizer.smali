.class public final Landroidx/media/AudioAttributesImplApi21Parcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Le/a;)Landroid/support/v4/media/b;
    .locals 3

    .line 1
    new-instance v0, Landroid/support/v4/media/b;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/support/v4/media/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Landroid/support/v4/media/b;->a:Landroid/media/AudioAttributes;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {p0, v1, v2}, Le/a;->e(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/media/AudioAttributes;

    .line 14
    .line 15
    iput-object v1, v0, Landroid/support/v4/media/b;->a:Landroid/media/AudioAttributes;

    .line 16
    .line 17
    iget v1, v0, Landroid/support/v4/media/b;->b:I

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-virtual {p0, v1, v2}, Le/a;->d(II)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    iput p0, v0, Landroid/support/v4/media/b;->b:I

    .line 25
    .line 26
    return-object v0
.end method

.method public static write(Landroid/support/v4/media/b;Le/a;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/support/v4/media/b;->a:Landroid/media/AudioAttributes;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p1, v1}, Le/a;->g(I)V

    .line 8
    .line 9
    .line 10
    move-object v1, p1

    .line 11
    check-cast v1, Le/b;

    .line 12
    .line 13
    iget-object v1, v1, Le/b;->b:Landroid/os/Parcel;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 17
    .line 18
    .line 19
    iget p0, p0, Landroid/support/v4/media/b;->b:I

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    invoke-virtual {p1, p0, v0}, Le/a;->h(II)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
