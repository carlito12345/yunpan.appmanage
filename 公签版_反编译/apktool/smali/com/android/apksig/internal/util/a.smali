.class public final synthetic Lcom/android/apksig/internal/util/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/apksig/internal/util/VerityTreeBuilder;Ljava/nio/ByteBuffer;I[[BLjava/util/concurrent/Phaser;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/apksig/internal/util/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/internal/util/a;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/apksig/internal/util/a;->d:Ljava/lang/Object;

    iput p3, p0, Lcom/android/apksig/internal/util/a;->b:I

    iput-object p4, p0, Lcom/android/apksig/internal/util/a;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/apksig/internal/util/a;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ly1/s0;Landroid/util/Pair;Lf2/t;Lf2/y;I)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/apksig/internal/util/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/internal/util/a;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/apksig/internal/util/a;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/apksig/internal/util/a;->e:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/apksig/internal/util/a;->f:Ljava/lang/Object;

    iput p5, p0, Lcom/android/apksig/internal/util/a;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/apksig/internal/util/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/apksig/internal/util/a;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ly1/s0;

    .line 9
    .line 10
    iget-object v0, v0, Ly1/s0;->b:Lm7/l;

    .line 11
    .line 12
    iget-object v0, v0, Lm7/l;->i:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v1, v0

    .line 15
    check-cast v1, Lz1/e;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/apksig/internal/util/a;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Landroid/util/Pair;

    .line 20
    .line 21
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 30
    .line 31
    move-object v3, v0

    .line 32
    check-cast v3, Lf2/c0;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/apksig/internal/util/a;->e:Ljava/lang/Object;

    .line 35
    .line 36
    move-object v4, v0

    .line 37
    check-cast v4, Lf2/t;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/apksig/internal/util/a;->f:Ljava/lang/Object;

    .line 40
    .line 41
    move-object v5, v0

    .line 42
    check-cast v5, Lf2/y;

    .line 43
    .line 44
    iget v6, p0, Lcom/android/apksig/internal/util/a;->b:I

    .line 45
    .line 46
    invoke-virtual/range {v1 .. v6}, Lz1/e;->G(ILf2/c0;Lf2/t;Lf2/y;I)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_0
    iget-object v0, p0, Lcom/android/apksig/internal/util/a;->e:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, [[B

    .line 53
    .line 54
    iget-object v1, p0, Lcom/android/apksig/internal/util/a;->f:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v1, Ljava/util/concurrent/Phaser;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/android/apksig/internal/util/a;->d:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 61
    .line 62
    iget v3, p0, Lcom/android/apksig/internal/util/a;->b:I

    .line 63
    .line 64
    iget-object v4, p0, Lcom/android/apksig/internal/util/a;->c:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v4, Lcom/android/apksig/internal/util/VerityTreeBuilder;

    .line 67
    .line 68
    invoke-static {v4, v2, v3, v0, v1}, Lcom/android/apksig/internal/util/VerityTreeBuilder;->r(Lcom/android/apksig/internal/util/VerityTreeBuilder;Ljava/nio/ByteBuffer;I[[BLjava/util/concurrent/Phaser;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
