.class public final Landroidx/media/AudioAttributesImplApi21Parcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static read(Lj4/a;)Landroidx/media/AudioAttributesImplApi21;
    .locals 3

    .line 1
    new-instance v0, Landroidx/media/AudioAttributesImplApi21;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media/AudioAttributesImplApi21;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Landroidx/media/AudioAttributesImplApi21;->a:Landroid/media/AudioAttributes;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {p0, v1, v2}, Lj4/a;->g(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroidx/fragment/app/o1;->h(Landroid/os/Parcelable;)Landroid/media/AudioAttributes;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, v0, Landroidx/media/AudioAttributesImplApi21;->a:Landroid/media/AudioAttributes;

    .line 18
    .line 19
    iget v1, v0, Landroidx/media/AudioAttributesImplApi21;->b:I

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-virtual {p0, v1, v2}, Lj4/a;->f(II)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    iput p0, v0, Landroidx/media/AudioAttributesImplApi21;->b:I

    .line 27
    .line 28
    return-object v0
.end method

.method public static write(Landroidx/media/AudioAttributesImplApi21;Lj4/a;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media/AudioAttributesImplApi21;->a:Landroid/media/AudioAttributes;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p1, v1}, Lj4/a;->i(I)V

    .line 8
    .line 9
    .line 10
    move-object v1, p1

    .line 11
    check-cast v1, Lj4/b;

    .line 12
    .line 13
    iget-object v1, v1, Lj4/b;->e:Landroid/os/Parcel;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 17
    .line 18
    .line 19
    iget p0, p0, Landroidx/media/AudioAttributesImplApi21;->b:I

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    invoke-virtual {p1, p0, v0}, Lj4/a;->j(II)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
