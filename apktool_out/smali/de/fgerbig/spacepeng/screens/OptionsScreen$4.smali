.class Lde/fgerbig/spacepeng/screens/OptionsScreen$4;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;
.source "OptionsScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/fgerbig/spacepeng/screens/OptionsScreen;-><init>(Lde/fgerbig/spacepeng/SpacePeng;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/fgerbig/spacepeng/screens/OptionsScreen;


# direct methods
.method constructor <init>(Lde/fgerbig/spacepeng/screens/OptionsScreen;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lde/fgerbig/spacepeng/screens/OptionsScreen$4;->this$0:Lde/fgerbig/spacepeng/screens/OptionsScreen;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;
    .param p2, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 115
    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    .end local p2    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getValue()F

    move-result v0

    .line 116
    .local v0, "value":F
    sget-object v1, Lde/fgerbig/spacepeng/SpacePeng;->preferencesManager:Lde/fgerbig/spacepeng/services/PreferencesManager;

    invoke-virtual {v1, v0}, Lde/fgerbig/spacepeng/services/PreferencesManager;->setVolume(F)V

    .line 117
    sget-object v1, Lde/fgerbig/spacepeng/SpacePeng;->musicManager:Lde/fgerbig/spacepeng/services/MusicManager;

    invoke-virtual {v1, v0}, Lde/fgerbig/spacepeng/services/MusicManager;->setVolume(F)V

    .line 118
    sget-object v1, Lde/fgerbig/spacepeng/SpacePeng;->soundManager:Lde/fgerbig/spacepeng/services/SoundManager;

    invoke-virtual {v1, v0}, Lde/fgerbig/spacepeng/services/SoundManager;->setVolume(F)V

    .line 119
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/OptionsScreen$4;->this$0:Lde/fgerbig/spacepeng/screens/OptionsScreen;

    invoke-static {v1}, Lde/fgerbig/spacepeng/screens/OptionsScreen;->access$000(Lde/fgerbig/spacepeng/screens/OptionsScreen;)V

    .line 120
    return-void
.end method
