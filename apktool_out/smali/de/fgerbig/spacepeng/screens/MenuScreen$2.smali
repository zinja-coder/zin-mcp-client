.class Lde/fgerbig/spacepeng/screens/MenuScreen$2;
.super Lde/fgerbig/spacepeng/utils/DefaultInputListener;
.source "MenuScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/fgerbig/spacepeng/screens/MenuScreen;-><init>(Lde/fgerbig/spacepeng/SpacePeng;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/fgerbig/spacepeng/screens/MenuScreen;

.field final synthetic val$game:Lde/fgerbig/spacepeng/SpacePeng;


# direct methods
.method constructor <init>(Lde/fgerbig/spacepeng/screens/MenuScreen;Lde/fgerbig/spacepeng/SpacePeng;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lde/fgerbig/spacepeng/screens/MenuScreen$2;->this$0:Lde/fgerbig/spacepeng/screens/MenuScreen;

    iput-object p2, p0, Lde/fgerbig/spacepeng/screens/MenuScreen$2;->val$game:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-direct {p0}, Lde/fgerbig/spacepeng/utils/DefaultInputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 3
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "button"    # I

    .prologue
    .line 98
    invoke-super/range {p0 .. p5}, Lde/fgerbig/spacepeng/utils/DefaultInputListener;->touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V

    .line 99
    sget-object v0, Lde/fgerbig/spacepeng/SpacePeng;->soundManager:Lde/fgerbig/spacepeng/services/SoundManager;

    sget-object v1, Lde/fgerbig/spacepeng/assets/SoundKey;->CLICK:Lde/fgerbig/spacepeng/assets/SoundKey;

    invoke-virtual {v0, v1}, Lde/fgerbig/spacepeng/services/SoundManager;->play(Lde/fgerbig/spacepeng/assets/SoundKey;)V

    .line 100
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/MenuScreen$2;->this$0:Lde/fgerbig/spacepeng/screens/MenuScreen;

    iget-object v0, v0, Lde/fgerbig/spacepeng/screens/MenuScreen;->profile:Lde/fgerbig/spacepeng/services/Profile;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/fgerbig/spacepeng/services/Profile;->setLastPlayedLevel(I)V

    .line 101
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/MenuScreen$2;->val$game:Lde/fgerbig/spacepeng/SpacePeng;

    new-instance v1, Lde/fgerbig/spacepeng/screens/GameScreen;

    iget-object v2, p0, Lde/fgerbig/spacepeng/screens/MenuScreen$2;->val$game:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-direct {v1, v2}, Lde/fgerbig/spacepeng/screens/GameScreen;-><init>(Lde/fgerbig/spacepeng/SpacePeng;)V

    invoke-virtual {v0, v1}, Lde/fgerbig/spacepeng/SpacePeng;->setScreen(Lcom/badlogic/gdx/Screen;)V

    .line 102
    return-void
.end method
