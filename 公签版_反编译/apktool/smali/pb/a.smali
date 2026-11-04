.class public final Lpb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpb/b;


# static fields
.field public static final b:Lpb/a;

.field public static final c:Lpb/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lpb/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lpb/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lpb/a;->b:Lpb/a;

    .line 8
    .line 9
    new-instance v0, Lpb/a;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lpb/a;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lpb/a;->c:Lpb/a;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lpb/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lpb/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljg/w;->A(I)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :pswitch_0
    sget-object v0, Lpb/c;->a:[I

    .line 12
    .line 13
    invoke-static {p1, v0}, Lpb/c;->a(I[I)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lpb/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljg/w;->C(I)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :pswitch_0
    sget-object v0, Lpb/c;->d:[I

    .line 12
    .line 13
    invoke-static {p1, v0}, Lpb/c;->a(I[I)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lpb/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljg/w;->D(I)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :pswitch_0
    sget-object v0, Lpb/c;->c:[I

    .line 12
    .line 13
    invoke-static {p1, v0}, Lpb/c;->a(I[I)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lpb/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljg/w;->t(I)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :pswitch_0
    sget-object v0, Lpb/c;->b:[I

    .line 12
    .line 13
    invoke-static {p1, v0}, Lpb/c;->a(I[I)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
