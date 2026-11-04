.class public final La2/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr1/p;

.field public b:Lr1/d;

.field public c:Landroid/media/AudioDeviceInfo;

.field public d:Z

.field public e:I

.field public f:I

.field public g:Z

.field public h:I


# direct methods
.method public constructor <init>(La2/s;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, La2/s;->a:Lr1/p;

    iput-object v0, p0, La2/s;->a:Lr1/p;

    .line 3
    iget-object v0, p1, La2/s;->b:Lr1/d;

    .line 4
    iput-object v0, p0, La2/s;->b:Lr1/d;

    .line 5
    iget-object v0, p1, La2/s;->c:Landroid/media/AudioDeviceInfo;

    .line 6
    iput-object v0, p0, La2/s;->c:Landroid/media/AudioDeviceInfo;

    .line 7
    iget-boolean v0, p1, La2/s;->d:Z

    .line 8
    iput-boolean v0, p0, La2/s;->d:Z

    .line 9
    iget v0, p1, La2/s;->e:I

    .line 10
    iput v0, p0, La2/s;->e:I

    .line 11
    iget v0, p1, La2/s;->f:I

    .line 12
    iput v0, p0, La2/s;->f:I

    .line 13
    iget-boolean v0, p1, La2/s;->g:Z

    .line 14
    iput-boolean v0, p0, La2/s;->g:Z

    .line 15
    iget p1, p1, La2/s;->h:I

    .line 16
    iput p1, p0, La2/s;->h:I

    return-void
.end method

.method public constructor <init>(Lr1/p;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, La2/s;->a:Lr1/p;

    .line 19
    sget-object p1, Lr1/d;->d:Lr1/d;

    iput-object p1, p0, La2/s;->b:Lr1/d;

    const/4 p1, 0x0

    .line 20
    iput p1, p0, La2/s;->e:I

    const/4 p1, -0x1

    .line 21
    iput p1, p0, La2/s;->f:I

    .line 22
    iput p1, p0, La2/s;->h:I

    return-void
.end method
