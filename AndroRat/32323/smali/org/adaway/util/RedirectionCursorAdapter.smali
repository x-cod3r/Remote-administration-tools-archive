.class public Lorg/adaway/util/RedirectionCursorAdapter;
.super Landroid/support/v4/widget/SimpleCursorAdapter;
.source "RedirectionCursorAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 0
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"
    .parameter "flags"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 38
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .parameter "v"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 45
    const v10, 0x7f08003f

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 46
    .local v0, cBox:Landroid/widget/CheckBox;
    const v10, 0x7f080040

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 47
    .local v6, hostnameTextView:Landroid/widget/TextView;
    const v10, 0x7f080041

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 49
    .local v9, ipTextView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 51
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 52
    .local v1, cursorPosition:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkbox_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 53
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hostname_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 54
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ip_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 56
    const-string v10, "enabled"

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 57
    .local v3, enabledCol:I
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, enabled:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 60
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 66
    :goto_0
    const-string v10, "url"

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 67
    .local v5, hostnameCol:I
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, hostname:Ljava/lang/String;
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const-string v10, "ip"

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 72
    .local v8, ipCol:I
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, ip:Ljava/lang/String;
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .end local v1           #cursorPosition:I
    .end local v2           #enabled:Ljava/lang/String;
    .end local v3           #enabledCol:I
    .end local v4           #hostname:Ljava/lang/String;
    .end local v5           #hostnameCol:I
    .end local v7           #ip:Ljava/lang/String;
    .end local v8           #ipCol:I
    :cond_0
    return-void

    .line 62
    .restart local v1       #cursorPosition:I
    .restart local v2       #enabled:Ljava/lang/String;
    .restart local v3       #enabledCol:I
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
