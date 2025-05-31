.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Window;
.source "Dialog.java"


# instance fields
.field buttonTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field cancelHide:Z

.field contentTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field focusListener:Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener;

.field protected ignoreTouchDown:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

.field previousKeyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field previousScrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field values:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .prologue
    .line 57
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V

    .line 44
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->values:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 49
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->ignoreTouchDown:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    .line 58
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 59
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 60
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->initialize()V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p3, "windowStyleName"    # Ljava/lang/String;

    .prologue
    .line 64
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V

    .line 44
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->values:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 49
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->ignoreTouchDown:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    .line 65
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 66
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 67
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->initialize()V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "windowStyle"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V

    .line 44
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->values:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 49
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->ignoreTouchDown:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    .line 72
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->initialize()V

    .line 73
    return-void
.end method

.method private initialize()V
    .locals 3

    .prologue
    const/high16 v2, 0x40c00000    # 6.0f

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->setModal(Z)V

    .line 78
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->defaults()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->space(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 79
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->contentTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 80
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 81
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->buttonTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 83
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->contentTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->defaults()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->space(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 84
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->buttonTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->defaults()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->space(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->buttonTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$2;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$2;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 97
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->focusListener:Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener;

    .line 117
    return-void
.end method


# virtual methods
.method public button(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;
    .locals 1
    .param p1, "button"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->button(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public button(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;
    .locals 1
    .param p1, "button"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Button;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->buttonTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 182
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->setObject(Lcom/badlogic/gdx/scenes/scene2d/Actor;Ljava/lang/Object;)V

    .line 183
    return-object p0
.end method

.method public button(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->button(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public button(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method may only be used if the dialog was constructed with a Skin."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->button(Ljava/lang/String;Ljava/lang/Object;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public button(Ljava/lang/String;Ljava/lang/Object;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "buttonStyle"    # Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    .prologue
    .line 170
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-direct {v0, p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->button(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->cancelHide:Z

    .line 268
    return-void
.end method

.method public getButtonTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->buttonTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-object v0
.end method

.method public getContentTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->contentTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-object v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 238
    const v0, 0x3ecccccd    # 0.4f

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->fade:Lcom/badlogic/gdx/math/Interpolation;

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->ignoreTouchDown:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Z)Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;

    move-result-object v1

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->removeActor()Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->hide(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 239
    return-void
.end method

.method public hide(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 4
    .param p1, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    const/4 v3, 0x0

    .line 217
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    .line 218
    .local v1, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-eqz v1, :cond_5

    .line 219
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->focusListener:Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 220
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->previousKeyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->previousKeyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v2

    if-nez v2, :cond_0

    iput-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->previousKeyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 221
    :cond_0
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getKeyboardFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 222
    .local v0, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->previousKeyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 224
    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->previousScrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->previousScrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v2

    if-nez v2, :cond_3

    iput-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->previousScrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 225
    :cond_3
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getScrollFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->previousScrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 228
    .end local v0    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_5
    if-eqz p1, :cond_6

    .line 229
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->ignoreTouchDown:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 230
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->ignoreTouchDown:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Z)Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;

    move-result-object v2

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->removeActor()Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_6
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->remove()Z

    goto :goto_0
.end method

.method public key(ILjava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;
    .locals 1
    .param p1, "keycode"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 248
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 258
    return-object p0
.end method

.method protected result(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 264
    return-void
.end method

.method public setObject(Lcom/badlogic/gdx/scenes/scene2d/Actor;Ljava/lang/Object;)V
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->values:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    return-void
.end method

.method protected setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 1
    .param p1, "stage"    # Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->focusListener:Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 124
    :goto_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 125
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->focusListener:Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    goto :goto_0
.end method

.method public show(Lcom/badlogic/gdx/scenes/scene2d/Stage;)Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;
    .locals 4
    .param p1, "stage"    # Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 210
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    sget-object v2, Lcom/badlogic/gdx/math/Interpolation;->fade:Lcom/badlogic/gdx/math/Interpolation;

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->show(Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    .line 211
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->setPosition(FF)V

    .line 212
    return-object p0
.end method

.method public show(Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;
    .locals 3
    .param p1, "stage"    # Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .param p2, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->clearActions()V

    .line 189
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->ignoreTouchDown:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 191
    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->previousKeyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 192
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getKeyboardFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 193
    .local v0, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->previousKeyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 195
    :cond_0
    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->previousScrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 196
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getScrollFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->previousScrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->pack()V

    .line 200
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 201
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 202
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 203
    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 205
    :cond_2
    return-object p0
.end method

.method public text(Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;
    .locals 1
    .param p1, "label"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->contentTable:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 150
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method may only be used if the dialog was constructed with a Skin."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->text(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public text(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "labelStyle"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .prologue
    .line 144
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->text(Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    move-result-object v0

    return-object v0
.end method
