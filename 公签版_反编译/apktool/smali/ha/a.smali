.class public final Lha/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/wd;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/bean/NameContentSelectBean;

.field public final synthetic c:Lc6/g;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/bean/NameContentSelectBean;Lc6/g;II)V
    .locals 0

    .line 1
    iput p4, p0, Lha/a;->a:I

    iput-object p1, p0, Lha/a;->b:Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    iput-object p2, p0, Lha/a;->c:Lc6/g;

    iput p3, p0, Lha/a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 0

    .line 1
    return-void
.end method

.method private final b()V
    .locals 0

    .line 1
    return-void
.end method

.method private final c()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final D()V
    .locals 4

    .line 1
    iget v0, p0, Lha/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 7
    .line 8
    iget-boolean v1, v0, Lwa/u;->h:Z

    .line 9
    .line 10
    xor-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lwa/u;->h(Z)V

    .line 13
    .line 14
    .line 15
    iget-boolean v0, v0, Lwa/u;->h:Z

    .line 16
    .line 17
    iget-object v1, p0, Lha/a;->b:Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 18
    .line 19
    iput-boolean v0, v1, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 20
    .line 21
    iget-object v0, p0, Lha/a;->c:Lc6/g;

    .line 22
    .line 23
    iget v1, p0, Lha/a;->d:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 30
    .line 31
    iget-boolean v1, v0, Lwa/u;->h:Z

    .line 32
    .line 33
    xor-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lwa/u;->h(Z)V

    .line 36
    .line 37
    .line 38
    iget-boolean v0, v0, Lwa/u;->h:Z

    .line 39
    .line 40
    iget-object v1, p0, Lha/a;->b:Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 41
    .line 42
    iput-boolean v0, v1, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 43
    .line 44
    iget-object v0, p0, Lha/a;->c:Lc6/g;

    .line 45
    .line 46
    iget v1, p0, Lha/a;->d:I

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_1
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 53
    .line 54
    iget-boolean v1, v0, Lcom/yunpan/appmanage/util/w;->S:Z

    .line 55
    .line 56
    xor-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    iput-boolean v1, v0, Lcom/yunpan/appmanage/util/w;->S:Z

    .line 59
    .line 60
    :try_start_0
    iget-object v2, v0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 61
    .line 62
    const-string v3, "Accessibility_root_mode"

    .line 63
    .line 64
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v2, v3, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    :catch_0
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 72
    .line 73
    .line 74
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/w;->S:Z

    .line 75
    .line 76
    iget-object v1, p0, Lha/a;->b:Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 77
    .line 78
    iput-boolean v0, v1, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 79
    .line 80
    iget-object v0, p0, Lha/a;->c:Lc6/g;

    .line 81
    .line 82
    iget v1, p0, Lha/a;->d:I

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final t()V
    .locals 1

    .line 1
    iget v0, p0, Lha/a;->a:I

    return-void
.end method
