.class public final Lea/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final a:I

.field public final b:Landroid/widget/EditText;

.field public final c:Lea/d;


# direct methods
.method public constructor <init>(ILandroid/widget/EditText;Lea/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lea/a;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lea/a;->b:Landroid/widget/EditText;

    .line 7
    .line 8
    iput-object p3, p0, Lea/a;->c:Lea/d;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    iget p1, p0, Lea/a;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lea/a;->b:Landroid/widget/EditText;

    .line 4
    .line 5
    iget-object v1, p0, Lea/a;->c:Lea/d;

    .line 6
    .line 7
    invoke-interface {v1, p1, v0}, Lea/d;->a(ILandroid/widget/EditText;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method
