.class Lde/fgerbig/spacepeng/screens/MenuScreen$5;
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
    .line 138
    iput-object p1, p0, Lde/fgerbig/spacepeng/screens/MenuScreen$5;->this$0:Lde/fgerbig/spacepeng/screens/MenuScreen;

    iput-object p2, p0, Lde/fgerbig/spacepeng/screens/MenuScreen$5;->val$game:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-direct {p0}, Lde/fgerbig/spacepeng/utils/DefaultInputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 2
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "button"    # I

    .prologue
    .line 141
    invoke-super/range {p0 .. p5}, Lde/fgerbig/spacepeng/utils/DefaultInputListener;->touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V

    .line 142
    sget-object v0, Lde/fgerbig/spacepeng/SpacePeng;->soundManager:Lde/fgerbig/spacepeng/services/SoundManager;

    sget-object v1, Lde/fgerbig/spacepeng/assets/SoundKey;->CLICK:Lde/fgerbig/spacepeng/assets/SoundKey;

    invoke-virtual {v0, v1}, Lde/fgerbig/spacepeng/services/SoundManager;->play(Lde/fgerbig/spacepeng/assets/SoundKey;)V

    .line 143
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/MenuScreen$5;->val$game:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-virtual {v0}, Lde/fgerbig/spacepeng/SpacePeng;->pause()V

    .line 144
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/MenuScreen$5;->val$game:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-virtual {v0}, Lde/fgerbig/spacepeng/SpacePeng;->dispose()V

    .line 145
    return-void
.end method
