.class public final Ld9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ld9/b;


# direct methods
.method public constructor <init>(Ld9/b;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Ld9/a;->a:I

    .line 2
    iput-object p1, p0, Ld9/a;->b:Ld9/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ld9/b;Lv3/f;I)V
    .locals 0

    .line 1
    iput p3, p0, Ld9/a;->a:I

    iput-object p1, p0, Ld9/a;->b:Ld9/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Ld9/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ld9/a;->b:Ld9/b;

    .line 7
    .line 8
    iget-object v1, v0, Ld9/b;->e:Lnh/b;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {v0}, Ld9/b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ld9/b;->e()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    iget-object v1, v0, Ld9/b;->d:Lokhttp3/Call;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {v1, v2}, Lv3/f;->v(Lokhttp3/Call;Lokhttp3/Response;)Lv3/f;

    .line 24
    .line 25
    .line 26
    iget-object v0, v0, Ld9/b;->e:Lnh/b;

    .line 27
    .line 28
    invoke-virtual {v0}, Lnh/b;->f0()V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void

    .line 32
    :pswitch_0
    iget-object v0, p0, Ld9/a;->b:Ld9/b;

    .line 33
    .line 34
    iget-object v1, v0, Ld9/b;->e:Lnh/b;

    .line 35
    .line 36
    invoke-virtual {v1}, Lnh/b;->f0()V

    .line 37
    .line 38
    .line 39
    iget-object v0, v0, Ld9/b;->e:Lnh/b;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_1
    iget-object v0, p0, Ld9/a;->b:Ld9/b;

    .line 46
    .line 47
    iget-object v1, v0, Ld9/b;->e:Lnh/b;

    .line 48
    .line 49
    invoke-virtual {v1}, Lnh/b;->f0()V

    .line 50
    .line 51
    .line 52
    iget-object v0, v0, Ld9/b;->e:Lnh/b;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
