.class public final synthetic Lah/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lah/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const/16 v1, 0x2000

    .line 4
    .line 5
    iget v2, p0, Lah/a;->a:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-array v0, v1, [C

    .line 12
    .line 13
    return-object v0

    .line 14
    :pswitch_1
    new-array v0, v1, [B

    .line 15
    .line 16
    return-object v0

    .line 17
    :pswitch_2
    sget-object v0, Lsg/b;->c:[B

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_3
    new-instance v1, Lph/r;

    .line 25
    .line 26
    new-instance v2, Lph/x;

    .line 27
    .line 28
    invoke-direct {v2, v0}, Lph/x;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-class v0, Lph/q;

    .line 32
    .line 33
    invoke-direct {v1, v2, v0}, Lph/r;-><init>(Lph/q;Ljava/lang/Class;)V

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :pswitch_4
    new-instance v0, Ljava/util/IdentityHashMap;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :pswitch_5
    new-instance v0, Lrh/e;

    .line 44
    .line 45
    invoke-direct {v0}, Lrh/e;-><init>()V

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :pswitch_6
    const/16 v0, 0x800

    .line 50
    .line 51
    new-array v0, v0, [C

    .line 52
    .line 53
    return-object v0

    .line 54
    :pswitch_7
    const/16 v0, 0x200

    .line 55
    .line 56
    new-array v0, v0, [Ljava/lang/String;

    .line 57
    .line 58
    return-object v0

    .line 59
    :pswitch_8
    const/4 v0, 0x2

    .line 60
    new-array v0, v0, [C

    .line 61
    .line 62
    return-object v0

    .line 63
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const/16 v1, 0x400

    .line 66
    .line 67
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 68
    .line 69
    .line 70
    return-object v0

    .line 71
    :pswitch_a
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 72
    .line 73
    new-instance v1, Ljava/util/ArrayDeque;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    return-object v0

    .line 82
    :pswitch_b
    sget-object v0, Lsg/b;->a:[B

    .line 83
    .line 84
    new-array v0, v1, [B

    .line 85
    .line 86
    return-object v0

    .line 87
    :pswitch_c
    const/4 v0, 0x0

    .line 88
    return-object v0

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
