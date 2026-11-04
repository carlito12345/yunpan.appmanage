.class public final La2/i;
.super Landroid/media/AudioDeviceCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:La2/l;


# direct methods
.method public constructor <init>(La2/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, La2/i;->a:La2/l;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, La2/i;->a:La2/l;

    .line 2
    .line 3
    invoke-virtual {p1}, La2/l;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, La2/i;->a:La2/l;

    .line 2
    .line 3
    iget-object v0, v0, La2/l;->i:Landroid/media/AudioDeviceInfo;

    .line 4
    .line 5
    sget-object v1, Lu1/f0;->a:Ljava/lang/String;

    .line 6
    .line 7
    array-length v1, p1

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    aget-object v3, p1, v2

    .line 12
    .line 13
    invoke-static {v3, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, La2/i;->a:La2/l;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p1, La2/l;->i:Landroid/media/AudioDeviceInfo;

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    :goto_1
    iget-object p1, p0, La2/i;->a:La2/l;

    .line 29
    .line 30
    invoke-virtual {p1}, La2/l;->c()V

    .line 31
    .line 32
    .line 33
    return-void
.end method
